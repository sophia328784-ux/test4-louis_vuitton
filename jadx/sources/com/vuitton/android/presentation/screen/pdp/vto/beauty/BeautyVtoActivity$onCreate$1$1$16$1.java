package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.perfectcorp.perfectlib.MakeupCam;
import com.vuitton.android.R;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$16$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        final BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        MakeupCam makeupCam = beautyVtoActivity.s;
        if (makeupCam != null) {
            makeupCam.takePicture(beautyVtoActivity.w, beautyVtoActivity.x, beautyVtoActivity.y, beautyVtoActivity.z, new MakeupCam.PictureCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$takePicture$1
                @Override // com.perfectcorp.perfectlib.MakeupCam.PictureCallback
                public final void onFailure(Throwable th) {
                    beautyVtoActivity.L().c("BeautyVtoActivity", "onFailure takePicture", th);
                }

                @Override // com.perfectcorp.perfectlib.MakeupCam.PictureCallback
                public final void onPictureTaken(Bitmap bitmap, Bitmap bitmap2) throws IOException {
                    BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                    beautyVtoActivity2.L();
                    Objects.toString(bitmap);
                    Objects.toString(bitmap2);
                    String string = beautyVtoActivity2.getString(R.string.alt_photo_finish);
                    string.getClass();
                    AccessibilityUtils.a(beautyVtoActivity2, string);
                    if (bitmap2 != null) {
                        String str = System.currentTimeMillis() + ".jpg";
                        beautyVtoActivity2.M().A2(bitmap2, str);
                        ContentResolver contentResolver = beautyVtoActivity2.getContentResolver();
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        if (contentResolver != null) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_display_name", str);
                            contentValues.put("mime_type", "image/jpg");
                            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
                            Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                            ref$ObjectRef.f71921b = uriInsert != null ? contentResolver.openOutputStream(uriInsert) : null;
                        }
                        OutputStream outputStream = (OutputStream) ref$ObjectRef.f71921b;
                        if (outputStream != null) {
                            try {
                                bitmap2.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
                                outputStream.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.a(outputStream, th);
                                    throw th2;
                                }
                            }
                        }
                    }
                }
            });
        }
        return Unit.f71739a;
    }
}
