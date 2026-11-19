package com.sightcall.universal.media.offline;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import androidx.core.content.ContextCompat;
import com.sightcall.universal.permission.PermissionsActivity;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class Camera {

    public interface PermissionCallback {
        void onDenied();

        void onGranted();
    }

    public static void askPermission(Context context, final PermissionCallback permissionCallback) {
        String[] strArr = {"android.permission.CAMERA"};
        if (hasPermissions(context, strArr)) {
            permissionCallback.onGranted();
        } else {
            PermissionsActivity.startFromOffline(context, new PermissionsActivity.PermissionsResultReceiver(new Handler()) { // from class: com.sightcall.universal.media.offline.Camera.1
                @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
                public void onPermissionsDenied(boolean z) {
                    permissionCallback.onDenied();
                }

                @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
                public void onPermissionsGranted() {
                    permissionCallback.onGranted();
                }
            }, strArr);
        }
    }

    public static IntentUri getCameraIntent(Context context, int i2) {
        Uri outputMediaFile = getOutputMediaFile(3);
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        intent.putExtra("output", outputMediaFile);
        intent.putExtra("android.intent.extra.videoQuality", 1);
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", "picN" + i2);
        contentValues.put("description", "offlinesg");
        Uri uriInsert = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
        intent2.putExtra("output", uriInsert);
        Intent intent3 = new Intent("android.intent.action.CHOOSER");
        Intent intent4 = new Intent("android.intent.action.GET_CONTENT");
        intent4.addCategory("android.intent.category.OPENABLE");
        intent3.putExtra("android.intent.extra.INTENT", intent4);
        intent3.putExtra("android.intent.extra.TITLE", "Choose an action");
        intent3.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent2, intent});
        return new IntentUri(intent3, uriInsert, outputMediaFile);
    }

    private static Uri getOutputMediaFile(int i2) {
        if (Environment.getExternalStorageState() != null) {
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES), "SMW_VIDEO");
            if (!file.exists() && !file.mkdirs()) {
                return null;
            }
            String str = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            if (i2 == 3) {
                return Uri.fromFile(new File(file.getPath() + File.separator.toString() + "VID_" + str + ".mp4"));
            }
        }
        return null;
    }

    private static boolean hasPermissions(Context context, String... strArr) {
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                return false;
            }
        }
        return true;
    }
}
