package com.canhub.cropper;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.R;
import defpackage.s3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/canhub/cropper/CropImageIntentChooser;", "", "Landroidx/activity/ComponentActivity;", ActionFloatingViewItem.f37018a, "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;", "callback", "<init>", "(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V", "ResultCallback", "Companion", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropImageIntentChooser {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ComponentActivity f25059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResultCallback f25060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f25061c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Uri f25062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ActivityResultLauncher f25063f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/canhub/cropper/CropImageIntentChooser$Companion;", "", "", "GOOGLE_PHOTOS", "Ljava/lang/String;", "GOOGLE_PHOTOS_GO", "SAMSUNG_GALLERY", "ONEPLUS_GALLERY", "MIUI_GALLERY", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface ResultCallback {
        void a(Uri uri);

        void b();
    }

    static {
        new Companion(null);
    }

    public CropImageIntentChooser(ComponentActivity componentActivity, ResultCallback resultCallback) {
        componentActivity.getClass();
        resultCallback.getClass();
        this.f25059a = componentActivity;
        this.f25060b = resultCallback;
        String string = componentActivity.getString(R.string.pick_image_chooser_title);
        string.getClass();
        this.f25061c = string;
        this.d = CollectionsKt.P("com.google.android.apps.photos", "com.google.android.apps.photosgo", "com.sec.android.gallery3d", "com.oneplus.gallery", "com.miui.gallery");
        this.f25063f = componentActivity.registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new s3(this, 25));
    }

    public final ArrayList a(PackageManager packageManager, String str) {
        Object next;
        ArrayList arrayList = new ArrayList();
        Intent intent = str.equals("android.intent.action.GET_CONTENT") ? new Intent(str) : new Intent(str, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        List<ResolveInfo> listQueryIntentActivities = Build.VERSION.SDK_INT >= 33 ? packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0L)) : packageManager.queryIntentActivities(intent, 0);
        listQueryIntentActivities.getClass();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            Intent intent2 = new Intent(intent);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            arrayList.add(intent2);
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : this.d) {
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((Intent) next).getPackage(), str2));
            Intent intent3 = (Intent) next;
            if (intent3 != null) {
                arrayList.remove(intent3);
                arrayList2.add(intent3);
            }
        }
        arrayList.addAll(0, arrayList2);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0057  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0075  */
    /* JADX WARN: Code duplicated, block: B:31:0x0086 A[LOOP:1: B:29:0x0080->B:31:0x0086, LOOP_END] */
    public final void b(boolean z, boolean z2, Uri uri) {
        ArrayList arrayList;
        Intent intent;
        List<ResolveInfo> listQueryIntentActivities;
        Intent intent2;
        this.f25062e = uri;
        ArrayList arrayList2 = new ArrayList();
        ComponentActivity componentActivity = this.f25059a;
        PackageManager packageManager = componentActivity.getPackageManager();
        String packageName = componentActivity.getPackageName();
        try {
            String[] strArr = (Build.VERSION.SDK_INT >= 33 ? componentActivity.getPackageManager().getPackageInfo(packageName, PackageManager.PackageInfoFlags.of(4096L)) : componentActivity.getPackageManager().getPackageInfo(packageName, 4096)).requestedPermissions;
            if (strArr != null) {
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        String str = strArr[i2];
                        if (str == null || !str.equalsIgnoreCase("android.permission.CAMERA")) {
                            i2++;
                        } else if (componentActivity.checkSelfPermission("android.permission.CAMERA") == 0) {
                        }
                    }
                    if (z) {
                        packageManager.getClass();
                        arrayList = new ArrayList();
                        intent = new Intent("android.media.action.IMAGE_CAPTURE");
                        if (Build.VERSION.SDK_INT >= 33) {
                            listQueryIntentActivities = packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0L));
                        } else {
                            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                        }
                        listQueryIntentActivities.getClass();
                        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                            Intent intent3 = new Intent(intent);
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            intent3.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                            intent3.setPackage(resolveInfo.activityInfo.packageName);
                            componentActivity.grantUriPermission(resolveInfo.activityInfo.packageName, this.f25062e, 3);
                            intent3.putExtra("output", this.f25062e);
                            arrayList.add(intent3);
                        }
                        arrayList2.addAll(arrayList);
                    }
                }
            } else if (z) {
                packageManager.getClass();
                arrayList = new ArrayList();
                intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if (Build.VERSION.SDK_INT >= 33) {
                    listQueryIntentActivities = packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0L));
                } else {
                    listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                }
                listQueryIntentActivities.getClass();
                while (r3.hasNext()) {
                    Intent intent4 = new Intent(intent);
                    ActivityInfo activityInfo2 = resolveInfo.activityInfo;
                    intent4.setComponent(new ComponentName(activityInfo2.packageName, activityInfo2.name));
                    intent4.setPackage(resolveInfo.activityInfo.packageName);
                    componentActivity.grantUriPermission(resolveInfo.activityInfo.packageName, this.f25062e, 3);
                    intent4.putExtra("output", this.f25062e);
                    arrayList.add(intent4);
                }
                arrayList2.addAll(arrayList);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        if (z2) {
            packageManager.getClass();
            ArrayList arrayListA = a(packageManager, "android.intent.action.GET_CONTENT");
            if (arrayListA.isEmpty()) {
                arrayListA = a(packageManager, "android.intent.action.PICK");
            }
            arrayList2.addAll(arrayListA);
        }
        if (arrayList2.isEmpty()) {
            intent2 = new Intent();
        } else {
            Intent intent5 = new Intent("android.intent.action.CHOOSER", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            if (z2) {
                intent5.setAction("android.intent.action.PICK");
                intent5.setType("image/*");
            }
            intent2 = intent5;
        }
        Intent intentCreateChooser = Intent.createChooser(intent2, this.f25061c);
        intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
        this.f25063f.a(intentCreateChooser);
    }
}
