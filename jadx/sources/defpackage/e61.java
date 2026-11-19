package defpackage;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentWatchSettingsBinding;
import com.vuitton.android.presentation.databinding.ProgressOverlayBinding;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e61 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68779b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FragmentWatchSettingsBinding f68780c;
    public final /* synthetic */ WatchSettingsFragment d;

    public /* synthetic */ e61(FragmentWatchSettingsBinding fragmentWatchSettingsBinding, WatchSettingsFragment watchSettingsFragment) {
        this.f68780c = fragmentWatchSettingsBinding;
        this.d = watchSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentManager supportFragmentManager;
        int i2 = this.f68779b;
        final WatchSettingsFragment watchSettingsFragment = this.d;
        final FragmentWatchSettingsBinding fragmentWatchSettingsBinding = this.f68780c;
        View view = (View) obj;
        switch (i2) {
            case 0:
                WatchSettingsFragment.Companion companion = WatchSettingsFragment.J;
                view.getClass();
                FragmentActivity activity = watchSettingsFragment.getActivity();
                if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                    GenericBottomSheet.Companion companion2 = GenericBottomSheet.R;
                    String string = watchSettingsFragment.getString(R.string.watch_unpair_message);
                    string.getClass();
                    GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion2, string, watchSettingsFragment.getString(R.string.cancel), watchSettingsFragment.getString(R.string.p12_unpair_title), 16);
                    genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment$onViewCreated$2$4$1$1
                        @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                        public final void a() {
                            ProgressOverlayBinding progressOverlayBinding = fragmentWatchSettingsBinding.f51371e;
                            progressOverlayBinding.f51459b.setVisibility(0);
                            progressOverlayBinding.f51459b.sendAccessibilityEvent(32768);
                            WatchSettingsFragment.Companion companion3 = WatchSettingsFragment.J;
                            WatchSettingsFragment watchSettingsFragment2 = watchSettingsFragment;
                            WatchUiModel watchUiModelR = watchSettingsFragment2.R();
                            if (watchUiModelR != null) {
                                String str = watchUiModelR.d;
                                WatchSettingsViewModel watchSettingsViewModelQ = watchSettingsFragment2.Q();
                                LVViewModel.Bc(watchSettingsViewModelQ, new WatchSettingsViewModel$unpairWatch$1(watchSettingsViewModelQ, null), new WatchSettingsViewModel$unpairWatch$2(watchSettingsViewModelQ, str, null), 2);
                            }
                        }
                    };
                    genericBottomSheetB.show(supportFragmentManager, GenericBottomSheet.S);
                }
                break;
            default:
                WatchSettingsFragment.Companion companion3 = WatchSettingsFragment.J;
                view.getClass();
                TextView textView = fragmentWatchSettingsBinding.f51376k;
                textView.setVisibility(8);
                EditText editText = fragmentWatchSettingsBinding.l;
                editText.setText(textView.getText());
                editText.setVisibility(0);
                editText.setSelection(editText.getText().length());
                editText.requestFocus();
                Context context = watchSettingsFragment.getContext();
                if (context != null) {
                    Object systemService = context.getSystemService("input_method");
                    systemService.getClass();
                    ((InputMethodManager) systemService).showSoftInput(editText, 1);
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ e61(WatchSettingsFragment watchSettingsFragment, FragmentWatchSettingsBinding fragmentWatchSettingsBinding) {
        this.d = watchSettingsFragment;
        this.f68780c = fragmentWatchSettingsBinding;
    }
}
