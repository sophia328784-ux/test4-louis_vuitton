package com.linecorp.linesdk.openchat.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.dynatrace.android.callback.Callback;
import com.linecorp.linesdk.databinding.OpenChatInfoFragmentBinding;
import com.linecorp.linesdk.openchat.KotlinExtensionsKt$addAfterTextChangedAction$1;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import defpackage.jm;
import defpackage.mc0;
import defpackage.oh0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OpenChatInfoFragment extends Fragment {
    public static final Companion D = new Companion(null);
    public OpenChatInfoFragmentBinding A;
    public OpenChatInfoViewModel B;
    public final LinkedHashMap C = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;", "", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final void r(OpenChatInfoFragment openChatInfoFragment) {
        AlertDialog.Builder builder = new AlertDialog.Builder(openChatInfoFragment.requireContext());
        if (openChatInfoFragment.B == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        Context contextRequireContext = openChatInfoFragment.requireContext();
        contextRequireContext.getClass();
        OpenChatCategory[] openChatCategoryArrValues = OpenChatCategory.values();
        ArrayList arrayList = new ArrayList(openChatCategoryArrValues.length);
        for (OpenChatCategory openChatCategory : openChatCategoryArrValues) {
            arrayList.add(contextRequireContext.getResources().getString(openChatCategory.getResourceId()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        array.getClass();
        builder.b((String[]) array, new mc0(openChatInfoFragment, 2));
        builder.g();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        OpenChatInfoViewModel openChatInfoViewModel = (OpenChatInfoViewModel) new ViewModelProvider(fragmentActivityRequireActivity).a(Reflection.f71922a.b(OpenChatInfoViewModel.class));
        this.B = openChatInfoViewModel;
        OpenChatInfoFragmentBinding openChatInfoFragmentBinding = this.A;
        if (openChatInfoFragmentBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        openChatInfoFragmentBinding.m(openChatInfoViewModel);
        OpenChatInfoViewModel openChatInfoViewModel2 = this.B;
        if (openChatInfoViewModel2 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i2 = 0;
        openChatInfoViewModel2.f36271c.observe(this, new Observer(this) { // from class: mh0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ OpenChatInfoFragment f76280c;

            {
                this.f76280c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i3 = i2;
                OpenChatInfoFragment openChatInfoFragment = this.f76280c;
                switch (i3) {
                    case 0:
                        String str = (String) obj;
                        OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                        TextView textView = (TextView) openChatInfoFragment.p(R.id.nameMaxTextView);
                        str.getClass();
                        textView.setText(openChatInfoFragment.q(R.integer.max_chatroom_name_length, str));
                        break;
                    case 1:
                        String str2 = (String) obj;
                        OpenChatInfoFragment.Companion companion2 = OpenChatInfoFragment.D;
                        TextView textView2 = (TextView) openChatInfoFragment.p(R.id.descriptionMaxTextView);
                        str2.getClass();
                        textView2.setText(openChatInfoFragment.q(R.integer.max_chatroom_description_length, str2));
                        break;
                    default:
                        OpenChatCategory openChatCategory = (OpenChatCategory) obj;
                        OpenChatInfoFragment.Companion companion3 = OpenChatInfoFragment.D;
                        if (openChatCategory != null) {
                            ((TextView) openChatInfoFragment.p(R.id.categoryLabelTextView)).setText(openChatInfoFragment.getResources().getString(openChatCategory.getResourceId()));
                        }
                        break;
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel3 = this.B;
        if (openChatInfoViewModel3 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i3 = 1;
        openChatInfoViewModel3.f36272e.observe(this, new Observer(this) { // from class: mh0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ OpenChatInfoFragment f76280c;

            {
                this.f76280c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i4 = i3;
                OpenChatInfoFragment openChatInfoFragment = this.f76280c;
                switch (i4) {
                    case 0:
                        String str = (String) obj;
                        OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                        TextView textView = (TextView) openChatInfoFragment.p(R.id.nameMaxTextView);
                        str.getClass();
                        textView.setText(openChatInfoFragment.q(R.integer.max_chatroom_name_length, str));
                        break;
                    case 1:
                        String str2 = (String) obj;
                        OpenChatInfoFragment.Companion companion2 = OpenChatInfoFragment.D;
                        TextView textView2 = (TextView) openChatInfoFragment.p(R.id.descriptionMaxTextView);
                        str2.getClass();
                        textView2.setText(openChatInfoFragment.q(R.integer.max_chatroom_description_length, str2));
                        break;
                    default:
                        OpenChatCategory openChatCategory = (OpenChatCategory) obj;
                        OpenChatInfoFragment.Companion companion3 = OpenChatInfoFragment.D;
                        if (openChatCategory != null) {
                            ((TextView) openChatInfoFragment.p(R.id.categoryLabelTextView)).setText(openChatInfoFragment.getResources().getString(openChatCategory.getResourceId()));
                        }
                        break;
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel4 = this.B;
        if (openChatInfoViewModel4 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i4 = 2;
        openChatInfoViewModel4.f36273f.observe(this, new Observer(this) { // from class: mh0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ OpenChatInfoFragment f76280c;

            {
                this.f76280c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i5 = i4;
                OpenChatInfoFragment openChatInfoFragment = this.f76280c;
                switch (i5) {
                    case 0:
                        String str = (String) obj;
                        OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                        TextView textView = (TextView) openChatInfoFragment.p(R.id.nameMaxTextView);
                        str.getClass();
                        textView.setText(openChatInfoFragment.q(R.integer.max_chatroom_name_length, str));
                        break;
                    case 1:
                        String str2 = (String) obj;
                        OpenChatInfoFragment.Companion companion2 = OpenChatInfoFragment.D;
                        TextView textView2 = (TextView) openChatInfoFragment.p(R.id.descriptionMaxTextView);
                        str2.getClass();
                        textView2.setText(openChatInfoFragment.q(R.integer.max_chatroom_description_length, str2));
                        break;
                    default:
                        OpenChatCategory openChatCategory = (OpenChatCategory) obj;
                        OpenChatInfoFragment.Companion companion3 = OpenChatInfoFragment.D;
                        if (openChatCategory != null) {
                            ((TextView) openChatInfoFragment.p(R.id.categoryLabelTextView)).setText(openChatInfoFragment.getResources().getString(openChatCategory.getResourceId()));
                        }
                        break;
                }
            }
        });
        Toolbar toolbar = (Toolbar) requireActivity().findViewById(R.id.toolbar);
        toolbar.setTitle(getString(R.string.openchat_create_room_title));
        toolbar.getMenu().clear();
        toolbar.m(R.menu.menu_openchat_info);
        MenuItem menuItemFindItem = toolbar.getMenu().findItem(R.id.menu_item_openchat_next);
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.linecorp.linesdk.openchat.ui.a
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean z;
                OpenChatInfoFragment openChatInfoFragment = this.f36290b;
                OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                Callback.u(menuItem);
                try {
                    menuItem.getClass();
                    if (menuItem.getItemId() == R.id.menu_item_openchat_next) {
                        FragmentActivity fragmentActivityRequireActivity2 = openChatInfoFragment.requireActivity();
                        fragmentActivityRequireActivity2.getClass();
                        z = true;
                        ((CreateOpenChatActivity) fragmentActivityRequireActivity2).v(CreateOpenChatActivity.CreateOpenChatStep.UserProfile, true);
                    } else {
                        z = false;
                    }
                    return z;
                } finally {
                    Callback.v();
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel5 = this.B;
        if (openChatInfoViewModel5 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        openChatInfoViewModel5.l.observe(this, new oh0(0, menuItemFindItem));
        EditText editText = (EditText) p(R.id.nameEditText);
        editText.getClass();
        OpenChatInfoViewModel openChatInfoViewModel6 = this.B;
        if (openChatInfoViewModel6 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        editText.addTextChangedListener(new KotlinExtensionsKt$addAfterTextChangedAction$1(new OpenChatInfoFragment$setupName$1(1, openChatInfoViewModel6.f36271c, MutableLiveData.class, "setValue", "setValue(Ljava/lang/Object;)V", 0)));
        EditText editText2 = (EditText) p(R.id.descriptionEditText);
        editText2.getClass();
        OpenChatInfoViewModel openChatInfoViewModel7 = this.B;
        if (openChatInfoViewModel7 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        editText2.addTextChangedListener(new KotlinExtensionsKt$addAfterTextChangedAction$1(new OpenChatInfoFragment$setupDescription$1(1, openChatInfoViewModel7.f36272e, MutableLiveData.class, "setValue", "setValue(Ljava/lang/Object;)V", 0)));
        ((TextView) p(R.id.categoryLabelTextView)).setOnClickListener(new View.OnClickListener(this) { // from class: nh0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ OpenChatInfoFragment f76529c;

            {
                this.f76529c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i3;
                OpenChatInfoFragment openChatInfoFragment = this.f76529c;
                switch (i5) {
                    case 0:
                        OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                        Callback.n(view);
                        try {
                            ((CheckBox) openChatInfoFragment.p(R.id.searchIncludedCheckBox)).toggle();
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                    default:
                        OpenChatInfoFragment.Companion companion2 = OpenChatInfoFragment.D;
                        Callback.n(view);
                        try {
                            OpenChatInfoFragment.r(openChatInfoFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                }
            }
        });
        ((CheckBox) p(R.id.searchIncludedCheckBox)).setOnCheckedChangeListener(new jm(this, 1));
        ((ConstraintLayout) p(R.id.searchIncludedContainer)).setOnClickListener(new View.OnClickListener(this) { // from class: nh0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ OpenChatInfoFragment f76529c;

            {
                this.f76529c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i2;
                OpenChatInfoFragment openChatInfoFragment = this.f76529c;
                switch (i5) {
                    case 0:
                        OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                        Callback.n(view);
                        try {
                            ((CheckBox) openChatInfoFragment.p(R.id.searchIncludedCheckBox)).toggle();
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                    default:
                        OpenChatInfoFragment.Companion companion2 = OpenChatInfoFragment.D;
                        Callback.n(view);
                        try {
                            OpenChatInfoFragment.r(openChatInfoFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i2 = OpenChatInfoFragmentBinding.y;
        DataBinderMapper dataBinderMapper = DataBindingUtil.f12581a;
        OpenChatInfoFragmentBinding openChatInfoFragmentBinding = (OpenChatInfoFragmentBinding) ViewDataBinding.e(layoutInflater, R.layout.open_chat_info_fragment, viewGroup);
        openChatInfoFragmentBinding.getClass();
        this.A = openChatInfoFragmentBinding;
        openChatInfoFragmentBinding.k(this);
        OpenChatInfoFragmentBinding openChatInfoFragmentBinding2 = this.A;
        if (openChatInfoFragmentBinding2 != null) {
            return openChatInfoFragmentBinding2.f12596f;
        }
        Intrinsics.h("binding");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.C.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
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

    public final View p(int i2) {
        View viewFindViewById;
        Integer numValueOf = Integer.valueOf(i2);
        LinkedHashMap linkedHashMap = this.C;
        View view = (View) linkedHashMap.get(numValueOf);
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null || (viewFindViewById = view2.findViewById(i2)) == null) {
            return null;
        }
        linkedHashMap.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    public final String q(int i2, String str) {
        int integer = requireActivity().getResources().getInteger(i2);
        StringBuilder sb = new StringBuilder();
        sb.append(str.length());
        sb.append('/');
        sb.append(integer);
        return sb.toString();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
