package com.vuitton.android.presentation.utils;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.d21;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ShareUtilsKt {
    public static void a(Context context, Bitmap bitmap, String str, String str2, String str3, int i2) {
        Object failure;
        Uri uriForFile;
        Object failure2;
        if ((i2 & 4) != 0) {
            str = null;
        }
        if ((i2 & 8) != 0) {
            str2 = null;
        }
        context.getClass();
        bitmap.getClass();
        str3.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            File file = new File(context.getCacheDir(), "sharedimages");
            file.mkdirs();
            File file2 = new File(file, new Regex("[^a-zA-Z0-9\\.\\-]").replace(str3, "_") + ".jpg");
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            failure = file2.getAbsolutePath();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            File file3 = new File((String) failure);
            try {
                uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file3);
                try {
                    failure2 = Unit.f71739a;
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion3 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
            } catch (Throwable th3) {
                th = th3;
                uriForFile = null;
            }
            Throwable thA = Result.a(failure2);
            if (thA != null) {
                LegacyLogger.f66205a.c("ShareUtils", thA.getMessage(), thA);
                return;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("image/jpeg");
            if (uriForFile != null) {
                intent.putExtra("android.intent.extra.STREAM", uriForFile);
            }
            if (str != null) {
                intent.putExtra("android.intent.extra.TITLE", str);
            }
            if (str2 != null) {
                intent.putExtra("android.intent.extra.TEXT", str2);
            }
            intent.setClipData(ClipData.newRawUri(null, uriForFile));
            intent.addFlags(1);
            context.startActivity(Intent.createChooser(intent, null));
        }
        Result.a(failure);
    }

    public static final void b(Context context, String str, String str2, Intent intent, String str3) {
        context.getClass();
        str.getClass();
        if (str3 == null || StringsKt.w(str3)) {
            str3 = null;
        }
        String strJ = d21.j(str, str3 != null ? "\n\n".concat(str3) : "");
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.SEND");
        intent2.setType(HttpServer.MIME_PLAINTEXT);
        intent2.putExtra("android.intent.extra.TEXT", strJ);
        intent2.putExtra("android.intent.extra.SUBJECT", str2);
        if (intent == null) {
            context.startActivity(Intent.createChooser(intent2, context.getString(R.string.share_using)));
            return;
        }
        int i2 = Build.VERSION.SDK_INT >= 31 ? 201326592 : 134217728;
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 0, intent, i2);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, i2);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, 0, intent, i2);
        context.startActivity(Intent.createChooser(intent2, context.getString(R.string.share_using), broadcast.getIntentSender()));
    }

    public static /* synthetic */ void c(Context context, String str, String str2, int i2) {
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        b(context, str, str2, null, null);
    }
}
