package com.batch.android.l;

import android.R;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.batch.android.Batch;
import com.batch.android.BatchAttributesFetchListener;
import com.batch.android.BatchTagCollectionsFetchListener;
import com.batch.android.BatchUserAttribute;
import com.batch.android.n.f0;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class e extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f23631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ListView f23632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ListView f23633c;
    private ArrayAdapter<String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.k.a f23634e;

    public class a implements BatchAttributesFetchListener {
        public a() {
        }

        @Override // com.batch.android.BatchAttributesFetchListener
        public void onError() {
            e.this.d.clear();
            e.this.d.notifyDataSetChanged();
        }

        @Override // com.batch.android.BatchAttributesFetchListener
        public void onSuccess(Map<String, BatchUserAttribute> map) {
            e.this.d.setNotifyOnChange(false);
            for (Map.Entry<String, BatchUserAttribute> entry : map.entrySet()) {
                e.this.d.add(entry.getKey() + ": " + e.this.a(entry.getValue()));
            }
            e.this.d.notifyDataSetChanged();
        }
    }

    public class b implements BatchTagCollectionsFetchListener {
        public b() {
        }

        @Override // com.batch.android.BatchTagCollectionsFetchListener
        public void onError() {
            e.this.f23634e.a();
            e.this.f23634e.notifyDataSetChanged();
        }

        @Override // com.batch.android.BatchTagCollectionsFetchListener
        public void onSuccess(Map<String, Set<String>> map) {
            for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
                e.this.f23634e.a("t." + entry.getKey(), entry.getValue());
            }
            e.this.f23634e.notifyDataSetChanged();
        }
    }

    private void a() {
        ArrayAdapter<String> arrayAdapter = this.d;
        if (arrayAdapter == null) {
            this.d = new ArrayAdapter<>(requireContext(), R.layout.simple_list_item_1, R.id.text1);
        } else {
            arrayAdapter.clear();
            this.d.notifyDataSetChanged();
        }
        this.f23632b.setAdapter((ListAdapter) this.d);
        Batch.User.fetchAttributes(requireContext(), new a());
    }

    private void b() {
        com.batch.android.k.a aVar = this.f23634e;
        if (aVar == null) {
            this.f23634e = new com.batch.android.k.a(requireContext());
        } else {
            aVar.a();
            this.f23634e.notifyDataSetChanged();
        }
        this.f23633c.setAdapter((ListAdapter) this.f23634e);
        Batch.User.fetchTagCollections(requireContext(), new b());
    }

    public static e c() {
        return new e();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        String strB = f0.a().b(requireContext());
        TextView textView = this.f23631a;
        if (strB == null) {
            textView.setText(com.batch.android.R.string.com_batchsdk_debug_view_empty);
        } else {
            textView.setText(strB);
        }
        a();
        b();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(com.batch.android.R.layout.com_batchsdk_user_data_debug_fragment, viewGroup, false);
        this.f23631a = (TextView) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_user_data_debug_fragment_user_id);
        this.f23632b = (ListView) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_user_data_debug_fragment_attribute_list);
        this.f23633c = (ListView) viewInflate.findViewById(com.batch.android.R.id.com_batchsdk_user_data_debug_fragment_collection_list);
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

    /* JADX INFO: Access modifiers changed from: private */
    public String a(BatchUserAttribute batchUserAttribute) {
        if (batchUserAttribute.type == BatchUserAttribute.Type.DATE) {
            return new SimpleDateFormat(getString(com.batch.android.R.string.com_batchsdk_debug_date_format), Locale.US).format(batchUserAttribute.getDateValue());
        }
        return batchUserAttribute.value.toString();
    }
}
