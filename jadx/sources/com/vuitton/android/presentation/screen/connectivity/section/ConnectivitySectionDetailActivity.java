package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import dagger.hilt.android.AndroidEntryPoint;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectivitySectionDetailActivity extends Hilt_ConnectivitySectionDetailActivity {
    public static final Companion p = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity$Companion;", "", "", "KEY_SECTION_TYPE", "Ljava/lang/String;", "KEY_SHOULD_SHOW_WATCH_FACES_PAGE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        SectionType sectionType;
        Serializable serializableExtra;
        EdgeToEdgeKt.b(this, false, false, 3);
        super.onCreate(bundle);
        setContentView(R.layout.activity_fragment_container);
        Intent intent = getIntent();
        if (intent == null) {
            sectionType = SectionType.EARPHONE;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("SECTION_TYPE", SectionType.class);
            } else {
                Serializable serializableExtra2 = intent.getSerializableExtra("SECTION_TYPE");
                if (!(serializableExtra2 instanceof SectionType)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (SectionType) serializableExtra2;
            }
            sectionType = (SectionType) serializableExtra;
            if (sectionType == null) {
                sectionType = SectionType.EARPHONE;
            }
        }
        Intent intent2 = getIntent();
        if (intent2 != null ? intent2.getBooleanExtra("SHOULD_SHOW_WATCH_FACES_PAGE", false) : false) {
            FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
            WatchfacePresentationPagerFragment.K.getClass();
            fragmentTransactionD.m(R.id.fragment_container, new WatchfacePresentationPagerFragment(), WatchfacePresentationPagerFragment.M);
            fragmentTransactionD.e();
            return;
        }
        FragmentTransaction fragmentTransactionD2 = getSupportFragmentManager().d();
        ConnectivitySectionDetailFragment.I.getClass();
        sectionType.getClass();
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = new ConnectivitySectionDetailFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("SECTION_TYPE", sectionType);
        connectivitySectionDetailFragment.setArguments(bundle2);
        fragmentTransactionD2.m(R.id.fragment_container, connectivitySectionDetailFragment, ConnectivitySectionDetailFragment.K);
        fragmentTransactionD2.e();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() > 0) {
            getSupportFragmentManager().V();
            return true;
        }
        finish();
        return true;
    }
}
