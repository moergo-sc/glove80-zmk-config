build:
    nom build
    while [ ! -d /Volumes/GLV80LHBOOT ]; do sleep 1; done
    sleep 1;
    cp result/glove80.uf2 /Volumes/GLV80LHBOOT/   
    
    while [ ! -d /Volumes/GLV80RHBOOT ]; do sleep 1; done
    sleep 1;
    cp result/glove80.uf2 /Volumes/GLV80RHBOOT/     
