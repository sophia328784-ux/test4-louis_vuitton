package com.vuitton.android.presentation.screen.connectivity.home;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ConnectivityNotPairedLayoutBinding;
import com.vuitton.android.presentation.databinding.ConnectivityPairedLayoutBinding;
import com.vuitton.android.presentation.databinding.FragmentConnectivityBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class ConnectivityFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentConnectivityBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConnectivityFragment$binding$2 f56053b = new ConnectivityFragment$binding$2(1, FragmentConnectivityBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_connectivity_not_paired;
        View viewA = ViewBindings.a(R.id.layout_connectivity_not_paired, view);
        if (viewA != null) {
            int i3 = R.id.connect_logo;
            if (((ImageView) ViewBindings.a(R.id.connect_logo, viewA)) != null) {
                i3 = R.id.image_arrow_earphones;
                if (((ImageView) ViewBindings.a(R.id.image_arrow_earphones, viewA)) != null) {
                    i3 = R.id.image_arrow_keep_all;
                    if (((ImageView) ViewBindings.a(R.id.image_arrow_keep_all, viewA)) != null) {
                        i3 = R.id.image_arrow_sneakers;
                        if (((ImageView) ViewBindings.a(R.id.image_arrow_sneakers, viewA)) != null) {
                            i3 = R.id.image_arrow_speaker_horizon;
                            if (((ImageView) ViewBindings.a(R.id.image_arrow_speaker_horizon, viewA)) != null) {
                                i3 = R.id.image_arrow_speaker_trunk;
                                if (((ImageView) ViewBindings.a(R.id.image_arrow_speaker_trunk, viewA)) != null) {
                                    i3 = R.id.image_arrow_watch;
                                    if (((ImageView) ViewBindings.a(R.id.image_arrow_watch, viewA)) != null) {
                                        i3 = R.id.image_earphones;
                                        if (((ImageView) ViewBindings.a(R.id.image_earphones, viewA)) != null) {
                                            i3 = R.id.image_keep_all;
                                            if (((ImageView) ViewBindings.a(R.id.image_keep_all, viewA)) != null) {
                                                i3 = R.id.image_sneakers;
                                                if (((ImageView) ViewBindings.a(R.id.image_sneakers, viewA)) != null) {
                                                    i3 = R.id.image_speaker_horizon;
                                                    if (((ImageView) ViewBindings.a(R.id.image_speaker_horizon, viewA)) != null) {
                                                        i3 = R.id.image_speaker_trunk;
                                                        if (((ImageView) ViewBindings.a(R.id.image_speaker_trunk, viewA)) != null) {
                                                            i3 = R.id.image_watch;
                                                            if (((ImageView) ViewBindings.a(R.id.image_watch, viewA)) != null) {
                                                                i3 = R.id.layout_discover_lv_connect_card;
                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.layout_discover_lv_connect_card, viewA);
                                                                if (frameLayout != null) {
                                                                    i3 = R.id.layout_earphone;
                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(R.id.layout_earphone, viewA);
                                                                    if (frameLayout2 != null) {
                                                                        i3 = R.id.layout_horizon_speaker;
                                                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(R.id.layout_horizon_speaker, viewA);
                                                                        if (frameLayout3 != null) {
                                                                            i3 = R.id.layout_image;
                                                                            if (((FrameLayout) ViewBindings.a(R.id.layout_image, viewA)) != null) {
                                                                                i3 = R.id.layout_keep_all;
                                                                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(R.id.layout_keep_all, viewA);
                                                                                if (frameLayout4 != null) {
                                                                                    i3 = R.id.layout_sneakers;
                                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(R.id.layout_sneakers, viewA);
                                                                                    if (frameLayout5 != null) {
                                                                                        i3 = R.id.layout_trunk_speaker;
                                                                                        FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(R.id.layout_trunk_speaker, viewA);
                                                                                        if (frameLayout6 != null) {
                                                                                            i3 = R.id.layout_watch;
                                                                                            FrameLayout frameLayout7 = (FrameLayout) ViewBindings.a(R.id.layout_watch, viewA);
                                                                                            if (frameLayout7 != null) {
                                                                                                i3 = R.id.space_earphones;
                                                                                                if (((Space) ViewBindings.a(R.id.space_earphones, viewA)) != null) {
                                                                                                    i3 = R.id.space_keep_all;
                                                                                                    if (((Space) ViewBindings.a(R.id.space_keep_all, viewA)) != null) {
                                                                                                        i3 = R.id.space_sneakers;
                                                                                                        if (((Space) ViewBindings.a(R.id.space_sneakers, viewA)) != null) {
                                                                                                            i3 = R.id.space_speaker_horizon;
                                                                                                            if (((Space) ViewBindings.a(R.id.space_speaker_horizon, viewA)) != null) {
                                                                                                                i3 = R.id.space_speaker_trunk;
                                                                                                                if (((Space) ViewBindings.a(R.id.space_speaker_trunk, viewA)) != null) {
                                                                                                                    i3 = R.id.space_watch;
                                                                                                                    if (((Space) ViewBindings.a(R.id.space_watch, viewA)) != null) {
                                                                                                                        ConnectivityNotPairedLayoutBinding connectivityNotPairedLayoutBinding = new ConnectivityNotPairedLayoutBinding((LinearLayout) viewA, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, frameLayout6, frameLayout7);
                                                                                                                        i2 = R.id.layout_connectivity_paired;
                                                                                                                        View viewA2 = ViewBindings.a(R.id.layout_connectivity_paired, view);
                                                                                                                        if (viewA2 != null) {
                                                                                                                            int i4 = R.id.button_add_new_iot_object;
                                                                                                                            Button button = (Button) ViewBindings.a(R.id.button_add_new_iot_object, viewA2);
                                                                                                                            if (button != null) {
                                                                                                                                i4 = R.id.layout_connectivity_card_container;
                                                                                                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.layout_connectivity_card_container, viewA2);
                                                                                                                                if (linearLayout != null) {
                                                                                                                                    i4 = R.id.layout_discover_lv_connect_card_paired;
                                                                                                                                    FrameLayout frameLayout8 = (FrameLayout) ViewBindings.a(R.id.layout_discover_lv_connect_card_paired, viewA2);
                                                                                                                                    if (frameLayout8 != null) {
                                                                                                                                        i4 = R.id.progress_iot_objects;
                                                                                                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.a(R.id.progress_iot_objects, viewA2);
                                                                                                                                        if (progressBar != null) {
                                                                                                                                            i4 = R.id.recycler_iot_objects;
                                                                                                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_iot_objects, viewA2);
                                                                                                                                            if (recyclerView != null) {
                                                                                                                                                i4 = R.id.text_connectivity_title;
                                                                                                                                                if (((TextView) ViewBindings.a(R.id.text_connectivity_title, viewA2)) != null) {
                                                                                                                                                    ConnectivityPairedLayoutBinding connectivityPairedLayoutBinding = new ConnectivityPairedLayoutBinding((LinearLayout) viewA2, button, linearLayout, frameLayout8, progressBar, recyclerView);
                                                                                                                                                    i2 = R.id.layout_connectivity_pairing_overlay;
                                                                                                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.layout_connectivity_pairing_overlay, view);
                                                                                                                                                    if (linearLayout2 != null) {
                                                                                                                                                        i2 = R.id.progress_connectivity;
                                                                                                                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.a(R.id.progress_connectivity, view);
                                                                                                                                                        if (progressBar2 != null) {
                                                                                                                                                            i2 = R.id.toolbar_simple;
                                                                                                                                                            View viewA3 = ViewBindings.a(R.id.toolbar_simple, view);
                                                                                                                                                            if (viewA3 != null) {
                                                                                                                                                                return new FragmentConnectivityBinding((LinearLayout) view, connectivityNotPairedLayoutBinding, connectivityPairedLayoutBinding, linearLayout2, progressBar2, ToolbarSimpleBinding.a(viewA3));
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            r81.d("Missing required view with ID: ".concat(viewA2.getResources().getResourceName(i4)));
                                                                                                                            return null;
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewA.getResources().getResourceName(i3)));
            return null;
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
