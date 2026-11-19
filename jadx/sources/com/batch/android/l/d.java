package com.batch.android.l;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.batch.android.R;
import com.batch.android.l.d;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
public class d extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.j.b f23630a;

    private /* synthetic */ void a(View view) {
        this.f23630a.a(1);
    }

    private /* synthetic */ void b(View view) {
        this.f23630a.a(2);
    }

    private /* synthetic */ void c(View view) {
        this.f23630a.a(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onCreateView$-Landroid-view-LayoutInflater-Landroid-view-ViewGroup-Landroid-os-Bundle--Landroid-view-View-, reason: not valid java name */
    public static /* synthetic */ void m16xd0e31f79(d dVar, View view) {
        Callback.n(view);
        try {
            dVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$onCreateView$-Landroid-view-LayoutInflater-Landroid-view-ViewGroup-Landroid-os-Bundle--Landroid-view-View-, reason: not valid java name */
    public static /* synthetic */ void m17x961510d8(d dVar, View view) {
        Callback.n(view);
        try {
            dVar.b(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$2$onCreateView$-Landroid-view-LayoutInflater-Landroid-view-ViewGroup-Landroid-os-Bundle--Landroid-view-View-, reason: not valid java name */
    public static /* synthetic */ void m18x5b470237(d dVar, View view) {
        Callback.n(view);
        try {
            dVar.c(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f23630a = (com.batch.android.j.b) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement OnMenuSelectedListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i2 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.com_batchsdk_main_debug_fragment, viewGroup, false);
        viewInflate.findViewById(R.id.com_batchsdk_main_debug_fragment_identifier).setOnClickListener(new View.OnClickListener(this) { // from class: s81

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ d f79744c;

            {
                this.f79744c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                d dVar = this.f79744c;
                switch (i3) {
                    case 0:
                        d.m16xd0e31f79(dVar, view);
                        break;
                    case 1:
                        d.m17x961510d8(dVar, view);
                        break;
                    default:
                        d.m18x5b470237(dVar, view);
                        break;
                }
            }
        });
        final int i3 = 1;
        viewInflate.findViewById(R.id.com_batchsdk_main_debug_fragment_user_data).setOnClickListener(new View.OnClickListener(this) { // from class: s81

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ d f79744c;

            {
                this.f79744c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i3;
                d dVar = this.f79744c;
                switch (i4) {
                    case 0:
                        d.m16xd0e31f79(dVar, view);
                        break;
                    case 1:
                        d.m17x961510d8(dVar, view);
                        break;
                    default:
                        d.m18x5b470237(dVar, view);
                        break;
                }
            }
        });
        final int i4 = 2;
        viewInflate.findViewById(R.id.com_batchsdk_main_debug_fragment_local_campaign).setOnClickListener(new View.OnClickListener(this) { // from class: s81

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ d f79744c;

            {
                this.f79744c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                d dVar = this.f79744c;
                switch (i5) {
                    case 0:
                        d.m16xd0e31f79(dVar, view);
                        break;
                    case 1:
                        d.m17x961510d8(dVar, view);
                        break;
                    default:
                        d.m18x5b470237(dVar, view);
                        break;
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    public static d a() {
        return new d();
    }
}
