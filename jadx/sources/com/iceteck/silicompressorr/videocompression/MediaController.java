package com.iceteck.silicompressorr.videocompression;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class MediaController {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static File f35761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Context f35762c;
    public static volatile MediaController d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f35763a = true;

    public static String a() {
        File file = new File(f35762c.getExternalFilesDir(Environment.DIRECTORY_MOVIES), new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        file.mkdirs();
        return file.getPath();
    }

    public static void b(MediaExtractor mediaExtractor, MP4Builder mP4Builder, MediaCodec.BufferInfo bufferInfo) throws IOException {
        boolean z;
        int iC = c(mediaExtractor, true);
        if (iC >= 0) {
            mediaExtractor.selectTrack(iC);
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iC);
            int iA = mP4Builder.a(trackFormat, true);
            int integer = trackFormat.getInteger("max-input-size");
            mediaExtractor.seekTo(0L, 0);
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(integer);
            boolean z2 = false;
            while (!z2) {
                int sampleTrackIndex = mediaExtractor.getSampleTrackIndex();
                if (sampleTrackIndex == iC) {
                    int sampleData = mediaExtractor.readSampleData(byteBufferAllocateDirect, 0);
                    bufferInfo.size = sampleData;
                    if (sampleData < 0) {
                        bufferInfo.size = 0;
                    } else {
                        bufferInfo.presentationTimeUs = mediaExtractor.getSampleTime();
                        bufferInfo.offset = 0;
                        bufferInfo.flags = mediaExtractor.getSampleFlags();
                        mP4Builder.g(iA, byteBufferAllocateDirect, bufferInfo, true);
                        mediaExtractor.advance();
                    }
                } else {
                    z = sampleTrackIndex == -1;
                }
                if (z) {
                    z2 = true;
                }
            }
            mediaExtractor.unselectTrack(iC);
        }
    }

    public static int c(MediaExtractor mediaExtractor, boolean z) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i2 = 0; i2 < trackCount; i2++) {
            String string = mediaExtractor.getTrackFormat(i2).getString("mime");
            if (z) {
                if (string.startsWith("audio/")) {
                    return i2;
                }
            } else {
                if (string.startsWith("video/")) {
                    return i2;
                }
            }
        }
        return -5;
    }
}
