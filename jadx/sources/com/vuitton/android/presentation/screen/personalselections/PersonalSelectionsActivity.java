package com.vuitton.android.presentation.screen.personalselections;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.mn0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PersonalSelectionsActivity extends Hilt_PersonalSelectionsActivity implements ChatHostActivity {
    public static final Companion s = new Companion(null);
    public LinkHandler p;
    public ChatLifecycleObserver q;
    public ChatAttachable r;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;", "", "", "PERSONAL_SELECTION_ID", "Ljava/lang/String;", "PERSONAL_SELECTION_TYPE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62378a;

        static {
            int[] iArr = new int[SelectionTypeUiModel.values().length];
            try {
                iArr[SelectionTypeUiModel.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionTypeUiModel.ADVISOR_CURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62378a = iArr;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.q;
        if (chatLifecycleObserver != null) {
            if (chatLifecycleObserver != null) {
                chatLifecycleObserver.d(i2, i3, intent);
            } else {
                Intrinsics.h("chatLifecycleObserver");
                throw null;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object serializableExtra;
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        int i2 = 0;
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        String stringExtra = getIntent().getStringExtra("PERSONAL_SELECTION_ID");
        Intent intent = getIntent();
        intent.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("PERSONAL_SELECTION_TYPE", SelectionTypeUiModel.class);
        } else {
            Object serializableExtra2 = intent.getSerializableExtra("PERSONAL_SELECTION_TYPE");
            if (!(serializableExtra2 instanceof SelectionTypeUiModel)) {
                serializableExtra2 = null;
            }
            serializableExtra = (SelectionTypeUiModel) serializableExtra2;
        }
        SelectionTypeUiModel selectionTypeUiModel = (SelectionTypeUiModel) serializableExtra;
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.q;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        chatComposeContainer.a(new ComposableLambdaImpl(-8200837, true, new mn0(stringExtra, selectionTypeUiModel, this, i2)));
    }
}
