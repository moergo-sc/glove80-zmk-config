@build:
    @ nom build
    @# Copy to the left side <-
    while [ ! -d /Volumes/GLV80LHBOOT ]; do sleep 1; done
    sleep 1;
    cp result/glove80.uf2 /Volumes/GLV80LHBOOT/ || echo "This might have worked or there might have been an erro?"
    @# Left side done.

    @# Copy to the right side ->
    while [ ! -d /Volumes/GLV80RHBOOT ]; do sleep 1; done
    sleep 1;
    cp result/glove80.uf2 /Volumes/GLV80RHBOOT/  || echo "This might have worked?"   
    @# Right side done.
