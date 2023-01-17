<div class="row">
	<div class="col-md-12">
		<div class="card">
			<?php
			if ($this->session->flashdata('alert') == 'tambah_bagian') :
			?>
				<div class="alert alert-success alert-dismissible animated fadeInDown" id="feedback" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					Data berhasil ditambahkan
				</div>
			<?php
			elseif ($this->session->flashdata('alert') == 'update_bagian') :
			?>
				<div class="alert alert-success alert-dismissible animated fadeInDown" id="feedback" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					Data berhasil diupdate
				</div>
			<?php
			elseif ($this->session->flashdata('alert') == 'hapus_bagian') :
			?>
				<div class="alert alert-danger alert-dismissible animated fadeInDown" id="feedback" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					Data berhasil dihapus
				</div>
			<?php
			endif;
			?>
			<div class="card-header">
				<h1 style="text-align: center">Data Bagian</h1>
				<?php if ($this->session->userdata('session_hak_akses') == 'manajer') : ?>
					<button type="button" class="btn btn-primary btn-bg-gradient-x-purple-blue box-shadow-2" data-toggle="modal" data-target="#tambah">
						<i class="ft-plus-circle"></i> Tambah Bagian
					</button>
				<?php endif ?>
			</div>
			<div class="card-body">
				<table class="table table-bordered zero-configuration">
					<thead>
						<tr>
							<th>No</th>
							<th>Bagian</th>
							<th>Upah</th>
							<td style="text-align: center"><i class="ft-settings spinner"></i></td>
						</tr>
					</thead>
					<tbody>

						<?php
						$no = 1;
						foreach ($bagian as $key => $value) :
						?>
							<tr>
								<td><?= $no ?></td>
								<td><?= $value['bagian_nama'] ?></td>
								<td>Rp. <?= nominal($value['bagian_gaji']) ?></td>
								<td>
									<?php if ($this->session->userdata('session_hak_akses') == 'manajer') : ?>
										<button class="btn btn-success btn-sm  btn-bg-gradient-x-blue-green box-shadow-2 gaji-edit" data-toggle="modal" data-target="#ubah" value="<?= $value['bagian_id'] ?>"><i class="ft-edit"></i></button>
										<button class="btn btn-danger btn-sm  btn-bg-gradient-x-red-pink box-shadow-2 gaji-hapus" data-toggle="modal" data-target="#hapus" value="<?= $value['bagian_id'] ?>"><i class="ft-trash"></i></button>
									<?php endif; ?>
								</td>
							</tr>
						<?php
							$no++;
						endforeach;
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- Modal tambah -->
<div class="modal fade text-left" id="tambah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel35"> Tambah Data Bagian</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<?= form_open('bagian/tambah') ?>
			<div class="modal-body">
				<fieldset class="form-group floating-label-form-group">
					<label for="bagian">Bagian</label>
					<input type="text" class="form-control" name="bagian" id="bagian" placeholder="Bagian" autocomplete="off" required>
				</fieldset>
				<fieldset class="form-group floating-label-form-group">
					<label for="gaji">Gaji</label>
					<input type="text" class="form-control" name="gaji" id="gaji" placeholder="Jumlah gaji" autocomplete="off" required>
				</fieldset>

			</div>
			<div class="modal-footer">
				<input type="reset" class="btn btn-secondary btn-bg-gradient-x-red-pink" data-dismiss="modal" value="Tutup">
				<input type="submit" class="btn btn-primary btn-bg-gradient-x-blue-cyan" name="simpan" value="Simpan">
			</div>
			<?= form_close() ?>
		</div>
	</div>
</div>

<!-- Modal ubah -->
<div class="modal fade text-left" id="ubah" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel35"> Ubah Data Bagian</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<?= form_open('bagian/update') ?>
			<div class="modal-body" id="updateformgaji">

			</div>
			<div class="modal-footer">
				<input type="reset" class="btn btn-secondary btn-bg-gradient-x-red-pink" data-dismiss="modal" value="Tutup">
				<input type="submit" class="btn btn-primary btn-bg-gradient-x-blue-cyan" name="update" value="Update">
			</div>
			<?= form_close() ?>
		</div>
	</div>
</div>

<!-- Modal hapus -->
<div class="modal fade text-left" id="hapus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel35"> Hapus Data Bagian ?</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-footer">
				<input type="reset" class="btn btn-secondary btn-bg-gradient-x-blue-cyan" data-dismiss="modal" value="Tutup">
				<div id="hapusgaji">

				</div>
			</div>
		</div>
	</div>
</div>