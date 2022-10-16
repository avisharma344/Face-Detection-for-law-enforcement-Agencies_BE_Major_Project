import cv2
from facerec import detect_faces

def registerCriminal(img, path, img_num):
    size = 2
    (im_width, im_height) = (112, 92)
    file_num = 2*img_num - 1

    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    faces = detect_faces(gray)
