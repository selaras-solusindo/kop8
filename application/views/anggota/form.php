<div class="post-title"><h2><a href="#"><?php echo $title; ?></a></h2></div>

<div class="post-body">

<?php
	echo form_open('anggota/'.$form_act, 'id="anggota_form"');

	echo "<div id='error' class='error-message' ";

	if($this->session->userdata('ERRMSG_ARR'))
	{
		echo ">";
		echo $this->session->userdata('ERRMSG_ARR');
		$this->session->unset_userdata('ERRMSG_ARR');
	}
	else
	{
		echo "style='display:none'>";
	}
	
	echo "</div>";

	$data['class'] = 'input';
	if ($act == 'view') $data['disabled'] = TRUE;
?>
	
	<table width="300" border="0" align="center" cellpadding="2" cellspacing="0">						  
		<tr>
			<th><?php echo form_label('No. Anggota *','no_anggota'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'no_anggota';
					$data['value'] = (set_value('no_anggota')) ? set_value('no_anggota') : $client_data['no_anggota'];
					$data['title'] = "No. Anggota tidak boleh kosong";
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('Nama *','nama'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'nama';
					$data['value'] = (set_value('nama')) ? set_value('nama') : $client_data['nama'];
					$data['title'] = "Nama tidak boleh kosong";
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('Tanggal Masuk','tgl_masuk'); ?></th>
			<td>
				<?php 
					$data['name'] = 'tgl_masuk';
					$data['id'] = 'datepicker';
					$data['value'] = (set_value('tgl_masuk')) ? set_value('tgl_masuk') : $client_data['tgl_masuk'];
					//$data['title'] = "Tanggal Masuk tidak boleh kosong dan harus diisi dengan format dddd-mm-yy";	
					unset($data['title']);
					echo form_input($data);
				?>
			</td>				 
		</tr>
		<tr>
			<th><?php echo form_label('Alamat *','alamat'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'alamat';
					$data['value'] = (set_value('alamat')) ? set_value('alamat') : $client_data['alamat'];
					$data['title'] = "Alamat tidak boleh kosong";						
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('Kota *','kota'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'kota';
					$data['value'] = (set_value('kota')) ? set_value('kota') : $client_data['kota'];
					$data['title'] = "Kota tidak boleh kosong";						
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('No. Handphone *','telpon_1'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'telpon_1';
					$data['value'] = (set_value('telpon_1')) ? set_value('telpon_1') : $client_data['telpon_1'];
					$data['title'] = "No. Handphone tidak boleh kosong";
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('No. Telepon','telpon_2'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'telpon_2';
					$data['value'] = (set_value('telpon_2')) ? set_value('telpon_2') : $client_data['telpon_2'];
					unset($data['title']);
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('Pekerjaan','pekerjaan'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'pekerjaan';
					$data['value'] = (set_value('pekerjaan')) ? set_value('pekerjaan') : $client_data['pekerjaan'];
					//unset($data['title']);
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('Jenis ID','jns_id'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'jns_id';
					$data['value'] = (set_value('jns_id')) ? set_value('jns_id') : $client_data['jns_id'];
					//unset($data['title']);
					echo form_input($data);
				?>
			</td>
		</tr>
		<tr>
			<th><?php echo form_label('No. ID','no_id'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'no_id';
					$data['value'] = (set_value('no_id')) ? set_value('no_id') : $client_data['no_id'];
					//unset($data['title']);
					echo form_input($data);
				?>
			</td>
		</tr>		
		<!--</tr>-->
		<tr>
			<th><?php echo form_label('Email','email'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'email';
					$data['value'] = (set_value('email')) ? set_value('email') : $client_data['email'];
					//unset($data['title']); //$data['title'] = "Email harus diisi dengan format email yang benar. Contoh : user@tetrasma.co.id";
					echo form_input($data);
				?>
			</td>
		</tr>		
		<tr>
			<th><?php echo form_label('Website','website'); ?></th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'website';
					$data['value'] = (set_value('website')) ? set_value('website') : $client_data['website'];
					echo form_input($data);
				?>
			</td>
		</tr>	
		<tr>
			<th>
				<?php echo form_label('Keterangan','keterangan'); ?>
			</th>
			<td>
				<?php 
					$data['name'] = $data['id'] = 'keterangan';
					$data['value'] = (set_value('keterangan')) ? set_value('keterangan') : $client_data['keterangan'];
					echo form_textarea($data);
				?>													
			</td>
		</tr>																																										
	</table>
	
	<div class="buttons">
		<?php 
			if($act!='view')
			{ 
				echo form_submit('simpan','Simpan', "id = 'button-save'" );
				echo form_reset('reset','Reset', "id = 'button-reset'" );
				echo form_button(array('id' => 'button-cancel', 'content' => 'Batal', 'onClick' => "location.href='".site_url()."anggota'" ));
			}
			else
			{
				echo form_button(array('id' => 'button-cancel', 'content' => 'Kembali', 'onClick' => "location.href='".site_url()."anggota'" ));
			}
		?>				
	</div>

<?php echo form_close(); ?>

</div>	

<script type='text/javascript'>
	//Validasi di client
	$(document).ready(function()
	{
		$('#anggota_form').validate({
			errorLabelContainer: "#error",
			wrapper: "li",
			rules: 
			{
				no_anggota: "required",
				nama      : "required",
				alamat    : "required",
				kota      : "required",
				telpon_1  : "required",
				/*npwp: "digits",
				npwp1: "digits",
				npwp2: "digits",
				npwp3: "digits",
				npwp4: "digits",
				npwp5: "digits",*/
			}
		});
	});
</script>
