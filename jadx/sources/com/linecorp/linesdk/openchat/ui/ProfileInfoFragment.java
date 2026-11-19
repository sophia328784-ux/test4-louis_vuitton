package com.linecorp.linesdk.openchat.ui;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import com.dynatrace.android.callback.Callback;
import com.linecorp.linesdk.databinding.ProfileInfoFragmentBinding;
import com.linecorp.linesdk.openchat.KotlinExtensionsKt$addAfterTextChangedAction$1;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.ui.ProfileInfoFragment;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.vuitton.android.R;
import defpackage.oh0;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ProfileInfoFragment extends Fragment {
    public static final Companion D = new Companion(null);
    public ProfileInfoFragmentBinding A;
    public OpenChatInfoViewModel B;
    public final LinkedHashMap C = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;", "", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean q(ProfileInfoFragment profileInfoFragment, MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_item_create_profile_done) {
            return false;
        }
        View currentFocus = profileInfoFragment.requireActivity().getCurrentFocus();
        if (currentFocus != null) {
            Object systemService = profileInfoFragment.requireActivity().getSystemService("input_method");
            systemService.getClass();
            ((InputMethodManager) systemService).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        OpenChatInfoViewModel openChatInfoViewModel = profileInfoFragment.B;
        if (openChatInfoViewModel == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        SharedPreferences.Editor editorEdit = openChatInfoViewModel.f36269a.edit();
        editorEdit.getClass();
        MutableLiveData mutableLiveData = openChatInfoViewModel.d;
        editorEdit.putString("key_profile_name", (String) mutableLiveData.getValue());
        editorEdit.apply();
        String str = (String) openChatInfoViewModel.f36271c.getValue();
        String str2 = str == null ? "" : str;
        String str3 = (String) openChatInfoViewModel.f36272e.getValue();
        String str4 = str3 == null ? "" : str3;
        String str5 = (String) mutableLiveData.getValue();
        String str6 = str5 == null ? "" : str5;
        OpenChatCategory openChatCategory = (OpenChatCategory) openChatInfoViewModel.f36273f.getValue();
        if (openChatCategory == null) {
            openChatCategory = OpenChatInfoViewModel.n;
        }
        OpenChatCategory openChatCategory2 = openChatCategory;
        openChatCategory2.getClass();
        Boolean bool = (Boolean) openChatInfoViewModel.g.getValue();
        if (bool == null) {
            bool = Boolean.TRUE;
        }
        BuildersKt.c(ViewModelKt.a(openChatInfoViewModel), null, null, new OpenChatInfoViewModel$createChatroom$1(openChatInfoViewModel, new OpenChatParameters(str2, str4, str6, openChatCategory2, bool.booleanValue()), null), 3);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        OpenChatInfoViewModel openChatInfoViewModel = (OpenChatInfoViewModel) new ViewModelProvider(fragmentActivityRequireActivity).a(Reflection.f71922a.b(OpenChatInfoViewModel.class));
        this.B = openChatInfoViewModel;
        ProfileInfoFragmentBinding profileInfoFragmentBinding = this.A;
        if (profileInfoFragmentBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        profileInfoFragmentBinding.m(openChatInfoViewModel);
        Toolbar toolbar = (Toolbar) requireActivity().findViewById(R.id.toolbar);
        toolbar.setTitle(getString(R.string.openchat_create_profile_title));
        toolbar.getMenu().clear();
        toolbar.m(R.menu.menu_profile_info);
        MenuItem menuItemFindItem = toolbar.getMenu().findItem(R.id.menu_item_create_profile_done);
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: hq0
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                ProfileInfoFragment profileInfoFragment = this.f69767b;
                ProfileInfoFragment.Companion companion = ProfileInfoFragment.D;
                Callback.u(menuItem);
                try {
                    return ProfileInfoFragment.q(profileInfoFragment, menuItem);
                } finally {
                    Callback.v();
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel2 = this.B;
        if (openChatInfoViewModel2 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        openChatInfoViewModel2.m.observe(this, new oh0(1, menuItemFindItem));
        EditText editText = (EditText) p(R.id.displayNameEditText);
        editText.getClass();
        editText.addTextChangedListener(new KotlinExtensionsKt$addAfterTextChangedAction$1(new Function1<String, Unit>() { // from class: com.linecorp.linesdk.openchat.ui.ProfileInfoFragment$setupProfileName$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str = (String) obj;
                str.getClass();
                OpenChatInfoViewModel openChatInfoViewModel3 = this.f36289c.B;
                if (openChatInfoViewModel3 != null) {
                    openChatInfoViewModel3.d.setValue(str);
                    return Unit.f71739a;
                }
                Intrinsics.h("viewModel");
                throw null;
            }
        }));
        TextView textView = (TextView) p(R.id.displayNameGuide);
        Resources resources = getResources();
        OpenChatInfoViewModel openChatInfoViewModel3 = this.B;
        if (openChatInfoViewModel3 != null) {
            textView.setText(resources.getString(R.string.openchat_create_profile_input_guide, openChatInfoViewModel3.f36271c.getValue()));
        } else {
            Intrinsics.h("viewModel");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i2 = ProfileInfoFragmentBinding.t;
        DataBinderMapper dataBinderMapper = DataBindingUtil.f12581a;
        ProfileInfoFragmentBinding profileInfoFragmentBinding = (ProfileInfoFragmentBinding) ViewDataBinding.e(layoutInflater, R.layout.profile_info_fragment, viewGroup);
        profileInfoFragmentBinding.getClass();
        this.A = profileInfoFragmentBinding;
        profileInfoFragmentBinding.k(this);
        ProfileInfoFragmentBinding profileInfoFragmentBinding2 = this.A;
        if (profileInfoFragmentBinding2 != null) {
            return profileInfoFragmentBinding2.f12596f;
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

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
