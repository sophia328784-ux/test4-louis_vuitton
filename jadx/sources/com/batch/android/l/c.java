package com.batch.android.l;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.batch.android.FailReason;
import com.batch.android.a.h;
import com.batch.android.e.t;
import com.batch.android.l.c;
import com.batch.android.n.d0;
import com.batch.android.n.q;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.hi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends Fragment {
    private static final String g = "LocalCampaignsDebugFragment";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f23623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ListView f23624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayAdapter<String> f23625c;
    private com.batch.android.j.b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.s.a f23626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.batch.android.n1.e f23627f = new a();

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ArrayList arrayList = new ArrayList();
        Iterator<com.batch.android.t.b> it = this.f23626e.d().iterator();
        while (it.hasNext()) {
            String str = it.next().m;
            if (str != null) {
                arrayList.add(str);
            }
        }
        ArrayAdapter<String> arrayAdapter = this.f23625c;
        if (arrayAdapter == null) {
            this.f23625c = new ArrayAdapter<>(getContext(), R.layout.simple_list_item_1, R.id.text1, arrayList);
        } else {
            arrayAdapter.clear();
            this.f23625c.addAll(arrayList);
        }
        this.f23624b.setAdapter((ListAdapter) this.f23625c);
        this.f23623a.setText(getString(com.batch.android.R.string.com_batchsdk_local_campaign_debug_fragment_title, Integer.valueOf(arrayList.size())));
    }

    private void b() {
        Toast.makeText(getContext(), com.batch.android.R.string.com_batchsdk_local_campaign_debug_fragment_refreshing, 0).show();
        try {
            d0.a(getActivity().getApplicationContext()).a(new h(getActivity().getApplicationContext(), this.f23627f));
        } catch (Exception e2) {
            t.c(g, "Error while refreshing in-app campaigns", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onCreateView$-Landroid-view-LayoutInflater-Landroid-view-ViewGroup-Landroid-os-Bundle--Landroid-view-View-, reason: not valid java name */
    public static /* synthetic */ void m14xd0e31f79(c cVar, AdapterView adapterView, View view, int i2, long j2) {
        Callback.q(view);
        try {
            cVar.a(adapterView, view, i2, j2);
        } finally {
            Callback.r();
            SensorsDataAutoTrackHelper.trackListView(adapterView, view, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$onCreateView$-Landroid-view-LayoutInflater-Landroid-view-ViewGroup-Landroid-os-Bundle--Landroid-view-View-, reason: not valid java name */
    public static /* synthetic */ void m15x961510d8(c cVar, View view) {
        Callback.n(view);
        try {
            cVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.d = (com.batch.android.j.b) context;
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement OnMenuSelectedListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(com.batch.android.R.layout.com_batchsdk_local_campaigns_debug_fragment, viewGroup, false);
        this.f23623a = (TextView) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_local_campaign_debug_fragment_title);
        ListView listView = (ListView) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_local_campaign_debug_fragment_list);
        this.f23624b = listView;
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: q81
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                c.m14xd0e31f79(this.f79048b, adapterView, view, i2, j2);
            }
        });
        ((Button) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_local_campaign_debug_fragment_refresh_button)).setOnClickListener(new hi(this, 10));
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

    public class a implements com.batch.android.n1.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.batch.android.n1.e f23628a = q.a();

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            c.this.a();
        }

        @Override // com.batch.android.n1.e
        public void a(List<com.batch.android.g1.c> list) {
            this.f23628a.a(list);
            FragmentActivity activity = c.this.getActivity();
            if (activity != null) {
                activity.runOnUiThread(new f(this, 1));
            }
        }

        @Override // com.batch.android.n1.e
        public void a(FailReason failReason) {
            this.f23628a.a(failReason);
            FragmentActivity activity = c.this.getActivity();
            if (activity != null) {
                activity.runOnUiThread(new f(this, 0));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            c.this.a();
        }
    }

    private void b(com.batch.android.s.a aVar) {
        this.f23626e = aVar;
    }

    public static c a(com.batch.android.s.a aVar) {
        c cVar = new c();
        cVar.b(aVar);
        return cVar;
    }

    private /* synthetic */ void a(AdapterView adapterView, View view, int i2, long j2) {
        this.d.a(this.f23625c.getItem(i2));
    }

    private /* synthetic */ void a(View view) {
        b();
    }
}
