function reorder(dire)



hdr1=spm_vol([dire ',1']);
xyz1=spm_read_vols(hdr1);
hdr1.fname='dti_cor_tensor1.nii';
hdr1.n=[1,1];

hdr3=spm_vol([dire ',2']);
xyz3=spm_read_vols(hdr3);
hdr3.fname='dti_cor_tensor3.nii';
hdr3.n=[1,1];

hdr6=spm_vol([dire ',3']);
xyz6=spm_read_vols(hdr6);
hdr6.fname='dti_cor_tensor6.nii';
hdr6.n=[1,1];


hdr2=spm_vol([dire ',4']);
xyz2=spm_read_vols(hdr2);
hdr2.fname='dti_cor_tensor2.nii';
hdr2.n=[1,1];

hdr4=spm_vol([dire ',5']);
xyz4=spm_read_vols(hdr4);
hdr4.fname='dti_cor_tensor4.nii';
hdr4.n=[1,1];

hdr5=spm_vol([dire ',6']);
xyz5=spm_read_vols(hdr5);
hdr5.fname='dti_cor_tensor5.nii';
hdr5.n=[1,1];
spm_write_vol(hdr1,xyz1);
spm_write_vol(hdr6,xyz6);
spm_write_vol(hdr3,xyz3);
spm_write_vol(hdr5,xyz5);
spm_write_vol(hdr2,xyz2);
spm_write_vol(hdr4,xyz4);


