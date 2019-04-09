#This script transforms a Tortoise tensor to a DTK compatible format. It uses the reorder.m script
# It also uses Matlab and FSL

#Path to the reorder.m script
INICIO='/home/pablo/Desktop/'
#Path to the tensor
DIR_PAC='/home/pablo/Desktop/1111/'
#Name of the tensor file
NAME='1442_V3_REL01_DT.nii'

cd $DIR_PAC



#Transforming to DTK format
echo "Transforming to DTK format"
matlab -nodesktop -nosplash -nodisplay -r "addpath('$INICIO');reorder('${DIR_PAC}${NAME}') ; quit"
fslmerge -t dti_DTK_tensor.nii dti_cor_tensor1 dti_cor_tensor2 dti_cor_tensor3 dti_cor_tensor4 dti_cor_tensor5 dti_cor_tensor6

#Clean auxiliary files
rm *cor_tensor*.nii		

		
		

