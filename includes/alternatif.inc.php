<?php
class Alternatif {
	private $conn;
	private $table_name = "data_alternatif";

	public $id;
	public $nama;
	public $jumlah_sekolah;
	public $jumlah_guru;
	public $jumlah_murid;
	public $jumlah_tidak_bersekolah;
	public $hasil_akhir;

	public function __construct($db) {
		$this->conn = $db;
	}

	function insert() {
		$query = "INSERT INTO {$this->table_name} VALUES(?, ?, ?, ?, ?, ?, NULL)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->bindParam(2, $this->nama);
		$stmt->bindParam(3, $this->jumlah_sekolah);
		$stmt->bindParam(4, $this->jumlah_guru);
		$stmt->bindParam(5, $this->jumlah_murid);
		$stmt->bindParam(6, $this->jumlah_tidak_bersekolah);
		$stmt->bindParam(7, $this->hasil_akhir);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function readAll() {
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt;
	}

	function readByFilter() {
		$query = "SELECT * FROM {$this->table_name} a JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif WHERE b.keterangan='B'";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt;
	}

	// function countByFilter() {
	// 	$query = "SELECT * FROM {$this->table_name} a JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif WHERE b.keterangan='B' ";
	// 	$stmt = $this->conn->prepare( $query );
	// 	$stmt->execute();

	// 	return $stmt->rowCount();
	// }

	// function readAllWithNilai() {
	// 	$query = "SELECT *, b.nilai, b.keterangan
	// 			FROM {$this->table_name} a
	// 				JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif
	// 			WHERE a.id_alternatif IN (SELECT id_alternatif FROM nilai_awal)
	// 			ORDER BY a.id_alternatif";
	// 	$stmt = $this->conn->prepare($query);
	// 	$stmt->execute();

	// 	return $stmt;
	// }

	function readByRank() {
		$query = "SELECT *
				FROM {$this->table_name}
				ORDER BY hasil_akhir DESC
				LIMIT 0,5";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt;
	}

	function countAll(){
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt->rowCount();
	}

	function readOne(){
		$query = "SELECT * FROM {$this->table_name} WHERE id_alternatif=? LIMIT 0,1";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->id = $row["id_alternatif"];
		$this->nama = $row["nama"];
		$this->jumlah_sekolah = $row["jumlah_sekolah"];
		$this->jumlah_guru = $row["jumlah_guru"];
		$this->jumlah_murid = $row["jumlah_murid"];
		$this->jumlah_tidak_bersekolah = $row["jumlah_tidak_bersekolah"];
		$this->hasil_akhir = $row["hasil_akhir"];
	}

	// function readOneByNik(){
	// 	$query = "SELECT * FROM {$this->table_name} WHERE  LIMIT 0,1";
	// 	$stmt = $this->conn->prepare($query);
	// 	$stmt->bindParam(1, $this->nik);
	// 	$stmt->execute();
	// 	$row = $stmt->fetch(PDO::FETCH_ASSOC);

	// 	$this->id = $row["id_alternatif"];
	// 	$this->nama = $row["nama"];
	// 	$this->jumlah_sekolah = $row["jumlah_sekolah"];
	// 	$this->jumlah_guru = $row["jumlah_guru"];
	// 	$this->jumlah_murid = $row["jumlah_murid"];
	// 	$this->jumlah_tidak_bersekolah = $row["jumlah_tidak_bersekolah"];
	// 	$this->hasil_akhir = $row["hasil_akhir"];
	// }

	function readSatu($a) {
		$query = "SELECT * FROM {$this->table_name} WHERE id_alternatif='$a' LIMIT 0,1";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt;
	}

	function getNewID() {
		$query = "SELECT MAX(id_alternatif) AS code FROM {$this->table_name}";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		if ($row) {
			return $this->genCode($row["code"], 'A', 3);
		} else {
			return $this->genCode($nomor_terakhir, 'A', 3);
		}
	}

	function genCode($latest, $key, $chars = 0) {
    $new = intval(substr($latest, strlen($key))) + 1;
    $numb = str_pad($new, $chars, "0", STR_PAD_LEFT);
    return $key . $numb;
	}

	function genNextCode($start, $key, $chars = 0) {
    $new = str_pad($start, $chars, "0", STR_PAD_LEFT);
    return $key . $new;
	}

	function update() {
		$query = "UPDATE {$this->table_name}
				SET
					nama = :nama,
					jumlah_sekolah = :jumlah_sekolah,
					jumlah_guru = :jumlah_guru,
					jumlah_murid = :jumlah_murid,
					jumlah_tidak_bersekolah = :jumlah_tidak_bersekolah,
				WHERE
					id_alternatif = :id";
		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':nama', $this->nama);
		$stmt->bindParam(':jumlah_sekolah', $this->jumlah_sekolah);
		$stmt->bindParam(':jumlah_guru', $this->jumlah_guru);
		$stmt->bindParam(':jumlah_murid', $this->jumlah_murid);
		$stmt->bindParam(':jumlah_tidak_bersekolah', $this->jumlah_tidak_bersekolah);
		$stmt->bindParam(':id', $this->id);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function delete() {
		$query = "DELETE FROM {$this->table_name} WHERE id_alternatif = ?";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function hapusell($ax) {
		$query = "DELETE FROM {$this->table_name} WHERE id_alternatif in $ax";
		$stmt = $this->conn->prepare($query);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}
}
