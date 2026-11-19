package com.batch.android.debug;

import android.app.ActionBar;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.batch.android.Batch;
import com.batch.android.R;
import com.batch.android.j.b;
import com.batch.android.l.a;
import com.batch.android.l.c;
import com.batch.android.l.d;
import com.batch.android.l.e;
import com.batch.android.n.f;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public class BatchDebugActivity extends FragmentActivity implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f23047b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f23048c = 1;
    public static final int d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f23049e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f23050f = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment[] f23051a = new Fragment[5];

    private void a(int i2, boolean z, String str) {
        if (i2 >= 0) {
            Fragment[] fragmentArr = this.f23051a;
            if (i2 < fragmentArr.length) {
                if (fragmentArr[i2] == null) {
                    if (i2 == 0) {
                        fragmentArr[i2] = d.a();
                    } else if (i2 == 1) {
                        fragmentArr[i2] = a.b();
                    } else if (i2 == 2) {
                        fragmentArr[i2] = e.c();
                    } else if (i2 == 3) {
                        fragmentArr[i2] = c.a(f.a());
                    } else if (i2 == 4) {
                        fragmentArr[i2] = com.batch.android.l.b.a(str, f.a());
                    }
                }
                FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
                Fragment[] fragmentArr2 = this.f23051a;
                if (z) {
                    fragmentTransactionD.m(R.id.com_batchsdk_debug_fragment_content, fragmentArr2[i2], null);
                    fragmentTransactionD.g();
                } else {
                    fragmentTransactionD.m(R.id.com_batchsdk_debug_fragment_content, fragmentArr2[i2], null);
                    fragmentTransactionD.d(null);
                    fragmentTransactionD.e();
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.com_batchsdk_debug_view);
        if (bundle == null) {
            a(0, true);
        }
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setTitle(R.string.com_batchsdk_debug_view_title);
        }
        a();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Batch.onDestroy(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Batch.onStart(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Batch.onStop(this);
        super.onStop();
    }

    private void a(int i2, boolean z) {
        a(i2, z, null);
    }

    @Override // com.batch.android.j.b
    public void a(int i2) {
        a(i2, false);
    }

    @Override // com.batch.android.j.b
    public void a(String str) {
        a(4, false, str);
    }

    private void a() {
        Window window = getWindow();
        if (window == null) {
            return;
        }
        WindowCompat.a(window, false);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
        windowInsetsControllerCompat.e(true);
        windowInsetsControllerCompat.d(true);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.com_batchsdk_debug_fragment_container);
        ViewCompat.x(linearLayout, new md(2));
        linearLayout.requestApplyInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insetsE = windowInsetsCompat.e(519);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (marginLayoutParams != null) {
            marginLayoutParams.leftMargin = insetsE.f12054a;
            marginLayoutParams.bottomMargin = insetsE.d;
            marginLayoutParams.rightMargin = insetsE.f12056c;
            marginLayoutParams.topMargin = insetsE.f12055b;
            view.setLayoutParams(marginLayoutParams);
        }
        return WindowInsetsCompat.f12243b;
    }
}
