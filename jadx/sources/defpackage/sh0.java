package defpackage;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.options.OptionsDestinations;
import com.vuitton.android.presentation.screen.options.OptionsDestinationsKt;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f79801c;
    public final /* synthetic */ ManagedActivityResultLauncher d;

    public /* synthetic */ sh0(ManagedActivityResultLauncher managedActivityResultLauncher, Context context) {
        this.f79800b = 2;
        this.d = managedActivityResultLauncher;
        this.f79801c = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79800b;
        OptionsDestinations.ToPrivacySettingsPage toPrivacySettingsPage = OptionsDestinations.ToPrivacySettingsPage.f59626a;
        Context context = this.f79801c;
        ManagedActivityResultLauncher managedActivityResultLauncher = this.d;
        switch (i2) {
            case 0:
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    IntentExtensionKt.b(OptionsDestinationsKt.a(toPrivacySettingsPage, appCompatActivityB), managedActivityResultLauncher);
                }
                break;
            case 1:
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                if (appCompatActivityB2 != null) {
                    IntentExtensionKt.b(OptionsDestinationsKt.a(toPrivacySettingsPage, appCompatActivityB2), managedActivityResultLauncher);
                }
                break;
            default:
                managedActivityResultLauncher.a(StoryActivity.Companion.a(StoryActivity.t, context, "Exchange-Instructions", 8));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sh0(Context context, ManagedActivityResultLauncher managedActivityResultLauncher, int i2) {
        this.f79800b = i2;
        this.f79801c = context;
        this.d = managedActivityResultLauncher;
    }
}
