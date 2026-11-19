package com.vuitton.android.presentation.extensions;

import android.graphics.drawable.Drawable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.main.MainActivity;
import defpackage.ct0;
import defpackage.hi;
import defpackage.l61;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FragmentExtKt {
    public static void a(Fragment fragment, Toolbar toolbar, l61 l61Var, int i2) {
        Fragment parentFragment;
        FragmentManager supportFragmentManager;
        if ((i2 & 4) != 0) {
            l61Var = null;
        }
        fragment.getClass();
        toolbar.getClass();
        FragmentActivity activity = fragment.getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity == null) {
            return;
        }
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.setDisplayShowTitleEnabled(false);
        FragmentActivity activity2 = fragment.getActivity();
        int i3 = 1;
        if (((activity2 == null || (supportFragmentManager = activity2.getSupportFragmentManager()) == null) ? 0 : supportFragmentManager.J()) > 0 || ((parentFragment = fragment.getParentFragment()) != null && parentFragment.getChildFragmentManager().J() > 0)) {
            supportActionBar.setHomeAsUpIndicator(R.drawable.ic_lv_chevron_backward);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeActionContentDescription(R.string.content_description_up_back);
        } else if (appCompatActivity instanceof MainActivity) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        } else {
            supportActionBar.setHomeAsUpIndicator(R.drawable.ic_close_legacy);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeActionContentDescription(R.string.content_description_up_close);
        }
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon != null) {
            navigationIcon.setAutoMirrored(true);
        }
        if (l61Var != null) {
            toolbar.setNavigationOnClickListener(new hi(l61Var, i3));
        }
    }

    public static final void b(Fragment fragment) {
        fragment.getClass();
        if (fragment.requireActivity().getSupportFragmentManager().J() > 0) {
            fragment.requireActivity().getSupportFragmentManager().V();
        } else {
            fragment.requireActivity().finish();
        }
    }

    public static final AppCompatActivity c(Fragment fragment) {
        fragment.getClass();
        FragmentActivity activity = fragment.getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            return appCompatActivity;
        }
        ct0.q("Fragment ", fragment, " not attached to an AppCompatActivity.");
        return null;
    }

    public static FragmentViewBindingDelegate d(Fragment fragment, Function1 function1) {
        fragment.getClass();
        function1.getClass();
        return new FragmentViewBindingDelegate(fragment, function1, null);
    }
}
