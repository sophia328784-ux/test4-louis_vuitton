package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkSpotifyHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVTrunkSpotifyHelper {
    public static String a(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            return "";
        }
        try {
            fragmentActivity.getPackageManager().getPackageInfo("com.spotify.music", 0);
            String string = fragmentActivity.getString(R.string.open_spotify_trunk);
            string.getClass();
            return string;
        } catch (PackageManager.NameNotFoundException unused) {
            return "Get Spotify free";
        }
    }

    public static void b(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            return;
        }
        try {
            try {
                fragmentActivity.getPackageManager().getPackageInfo("com.spotify.music", 0);
                fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("spotify:open")));
            } catch (ActivityNotFoundException unused) {
                fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=com.spotify.music")));
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.spotify.music")));
        }
    }
}
