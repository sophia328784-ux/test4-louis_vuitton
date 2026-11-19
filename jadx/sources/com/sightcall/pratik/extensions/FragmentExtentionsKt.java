package com.sightcall.pratik.extensions;

import android.view.Display;
import androidx.fragment.app.Fragment;
import com.sightcall.pratik.utils.SdkUtilsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"rotation", "", "Landroidx/fragment/app/Fragment;", "getRotation", "(Landroidx/fragment/app/Fragment;)I", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FragmentExtentionsKt {
    public static final int getRotation(Fragment fragment) {
        fragment.getClass();
        if (!SdkUtilsKt.isAtLeastSdk30()) {
            return fragment.requireActivity().getWindowManager().getDefaultDisplay().getRotation();
        }
        Display display = fragment.requireActivity().getDisplay();
        display.getClass();
        return display.getRotation();
    }
}
