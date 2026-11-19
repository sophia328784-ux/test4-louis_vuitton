package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ShareCompat {

    public static class IntentBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f12002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Intent f12003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f12004c;
        public ArrayList d;

        public IntentBuilder(Context context) {
            Activity activity;
            context.getClass();
            this.f12002a = context;
            Intent action = new Intent().setAction("android.intent.action.SEND");
            this.f12003b = action;
            action.putExtra("androidx.core.app.EXTRA_CALLING_PACKAGE", context.getPackageName());
            action.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", context.getPackageName());
            action.addFlags(524288);
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.f12003b.putExtra("androidx.core.app.EXTRA_CALLING_ACTIVITY", componentName);
                this.f12003b.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", componentName);
            }
        }
    }

    public static void a(Intent intent, ArrayList arrayList) {
        ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra("android.intent.extra.TEXT"), intent.getStringExtra("android.intent.extra.HTML_TEXT"), null, (Uri) arrayList.get(0)));
        int size = arrayList.size();
        for (int i2 = 1; i2 < size; i2++) {
            clipData.addItem(new ClipData.Item((Uri) arrayList.get(i2)));
        }
        intent.setClipData(clipData);
        intent.addFlags(1);
    }
}
