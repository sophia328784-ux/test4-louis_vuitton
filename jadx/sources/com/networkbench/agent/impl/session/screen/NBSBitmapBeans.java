package com.networkbench.agent.impl.session.screen;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.networkbench.agent.impl.floatbtnmanager.e;
import com.networkbench.agent.impl.j.b;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.a;
import defpackage.n00;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class NBSBitmapBeans {
    private static final String TAG = "NBSGestureDetectorNBSBitmapBeans";
    private static NBSReplayManager replayManager = new NBSReplayManager();
    private final CopyOnWriteArrayList<NBSBitmapBean> bitmapBeans = new CopyOnWriteArrayList<>();
    long end_time;
    int header_size;
    long screenHeight;
    long screenWidth;
    String session_ID;
    long start_time;
    String video_ID;

    public NBSBitmapBeans(int i2, int i3, String str, String str2) {
        this.screenWidth = i2;
        this.screenHeight = i3;
        this.session_ID = str;
        this.video_ID = str2;
    }

    public static byte[] asBytes(UUID uuid) {
        return ByteBuffer.wrap(new byte[16]).order(ByteOrder.BIG_ENDIAN).putLong(uuid.getMostSignificantBits()).putLong(uuid.getLeastSignificantBits()).array();
    }

    private void clearAll() {
        this.bitmapBeans.clear();
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(r.u().J()));
        deleteDirectory(new File(n00.r(File.separator, "tingyunScreen", sb)).listFiles());
    }

    private void clearOneself() {
        this.bitmapBeans.clear();
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(r.u().J()));
        String str = File.separator;
        a.B(sb, str, "tingyunScreen", str);
        sb.append(this.session_ID);
        deleteDirectory(new File(sb.toString()).listFiles());
    }

    private void deleteDirectory(File[] fileArr) {
        if (fileArr.length == 0) {
            return;
        }
        for (File file : fileArr) {
            if (!file.isFile()) {
                deleteDirectory(file.listFiles());
            }
            file.delete();
        }
    }

    public void addBitmapBean(NBSBitmapBean nBSBitmapBean) {
        if (nBSBitmapBean != null) {
            this.bitmapBeans.add(nBSBitmapBean);
        }
    }

    public ByteArrayOutputStream getOutputStream() {
        CopyOnWriteArrayList<NBSBitmapBean> copyOnWriteArrayList;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            if (this.bitmapBeans.size() <= 0) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            byte[] bArrAsBytes = asBytes(UUID.fromString(this.session_ID));
            byte[] bArrAsBytes2 = asBytes(UUID.fromString(this.video_ID));
            byte[] bArrA = b.a(r.u().e(this.start_time));
            byte[] bArrA2 = b.a(r.u().e(this.end_time));
            byte[] bArrA3 = b.a(this.screenWidth);
            byte[] bArrA4 = b.a(this.screenHeight);
            int length = bArrAsBytes.length + bArrAsBytes2.length + bArrA.length + bArrA2.length + bArrA3.length + bArrA4.length;
            byteArrayOutputStream2.write(b.a(length));
            Logger.debug(TAG, "getOutputStream   bitmapBean   frame_header_size   headLength: " + length);
            byteArrayOutputStream2.write(bArrAsBytes);
            byteArrayOutputStream2.write(bArrAsBytes2);
            byteArrayOutputStream2.write(bArrA);
            byteArrayOutputStream2.write(bArrA2);
            byteArrayOutputStream2.write(bArrA3);
            byteArrayOutputStream2.write(bArrA4);
            char c2 = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int size = this.bitmapBeans.size();
                copyOnWriteArrayList = this.bitmapBeans;
                if (i2 >= size) {
                    break;
                }
                NBSBitmapBean nBSBitmapBean = copyOnWriteArrayList.get(i2);
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(nBSBitmapBean.bitMapPath);
                try {
                    if (bitmapDecodeFile == null) {
                        Logger.debug(TAG, "NBSBitmapBean  getNBSScreenActionData  bitmap == null , : " + nBSBitmapBean.bitMapPath);
                    } else {
                        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                        try {
                            bitmapDecodeFile.compress(Bitmap.CompressFormat.WEBP, 100, byteArrayOutputStream3);
                            byte[] byteArray = byteArrayOutputStream3.toByteArray();
                            if (byteArray.length < 1024) {
                                Logger.debug(TAG, "NBSBitmapBean  getNBSScreenActionData  continue;   because bitmap size: " + byteArray.length);
                            } else {
                                byte[] bArrAsBytes3 = asBytes(UUID.fromString(nBSBitmapBean.frame_ID));
                                byte[] bArrA5 = b.a(r.u().e(nBSBitmapBean.frame_time));
                                byte[] bArr = new byte[1];
                                bArr[c2] = 1;
                                byte[] bArrA6 = b.a(nBSBitmapBean.frame_width);
                                byte[] bArrA7 = b.a(nBSBitmapBean.frame_height);
                                int length2 = bArrAsBytes3.length + bArrA5.length + 1 + bArrA6.length + bArrA7.length;
                                Logger.debug(TAG, "getOutputStream   bitmapBean   frame_header_size   length: " + length2);
                                byteArrayOutputStream2.write(b.a(length2));
                                byteArrayOutputStream2.write(bArrAsBytes3);
                                byteArrayOutputStream2.write(bArrA5);
                                byteArrayOutputStream2.write(bArr);
                                byteArrayOutputStream2.write(bArrA6);
                                byteArrayOutputStream2.write(bArrA7);
                                byteArrayOutputStream2.write(b.a(byteArray.length));
                                byteArrayOutputStream2.write(byteArray);
                                byte[] bytes = nBSBitmapBean.getNBSScreenActionData().getBytes("utf-8");
                                byteArrayOutputStream2.write(b.a(bytes.length));
                                byteArrayOutputStream2.write(bytes);
                                byte[] bArrWebviewItemsToByte = nBSBitmapBean.webviewItemsToByte();
                                byteArrayOutputStream2.write(b.a(bArrWebviewItemsToByte.length));
                                byteArrayOutputStream2.write(bArrWebviewItemsToByte);
                                byteArrayOutputStream3.close();
                            }
                        } catch (Throwable th) {
                            Logger.debug(TAG, "NBSBitmapBean  getNBSScreenActionData  error ;" + th.getMessage());
                            i3++;
                        }
                        i2++;
                        byteArrayOutputStream = byteArrayOutputStream;
                        c2 = 0;
                    }
                    i2++;
                    byteArrayOutputStream = byteArrayOutputStream;
                    c2 = 0;
                } catch (IOException e2) {
                    e = e2;
                }
                i3++;
                e = e2;
            }
            byteArrayOutputStream = byteArrayOutputStream;
            if (i3 == copyOnWriteArrayList.size()) {
                return byteArrayOutputStream;
            }
            byteArrayOutputStream2.close();
            return byteArrayOutputStream2;
        } catch (IOException e3) {
            e = e3;
            byteArrayOutputStream = byteArrayOutputStream;
        }
        Logger.debug(TAG, "getOutputStream  ex: " + e.getMessage());
        return byteArrayOutputStream;
    }

    public byte[] getSendData(boolean z) {
        UUID uuid;
        if (!r.u().l() || this.bitmapBeans.size() <= 0) {
            return null;
        }
        try {
            NBSBitmapBean nBSBitmapBean = this.bitmapBeans.get(0);
            if (nBSBitmapBean != null) {
                this.start_time = nBSBitmapBean.frame_time;
                CopyOnWriteArrayList<NBSBitmapBean> copyOnWriteArrayList = this.bitmapBeans;
                this.end_time = copyOnWriteArrayList.get(copyOnWriteArrayList.size() - 1).frame_time;
            }
            ByteArrayOutputStream outputStream = getOutputStream();
            if (z) {
                clearOneself();
            } else {
                clearAll();
            }
            if (outputStream != null) {
                byte[] byteArray = outputStream.toByteArray();
                this.video_ID = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString();
                return byteArray;
            }
            uuid = new UUID(ak.a().nextLong(), ak.a().nextLong());
        } catch (Throwable unused) {
            uuid = new UUID(ak.a().nextLong(), ak.a().nextLong());
        }
        this.video_ID = uuid.toString();
        return null;
    }

    public String getVideoId() {
        return this.video_ID;
    }

    public boolean isReplayCanCollecion() {
        return replayManager.canShotBitmap();
    }

    public void pauseVideo() {
        replayManager.pauseVideo();
    }

    public void resumeVideo() {
        replayManager.resumeVideo();
    }

    public void startVideo() {
        replayManager.startVideo();
    }

    public void stopVideo() {
        replayManager.stopVideo();
    }
}
