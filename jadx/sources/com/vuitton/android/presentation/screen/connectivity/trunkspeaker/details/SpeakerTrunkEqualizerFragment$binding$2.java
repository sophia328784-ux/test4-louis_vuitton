package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerEqualizerBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class SpeakerTrunkEqualizerFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrunkSpeakerEqualizerBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SpeakerTrunkEqualizerFragment$binding$2 f56480b = new SpeakerTrunkEqualizerFragment$binding$2(1, FragmentTrunkSpeakerEqualizerBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.bass_layout;
        if (((LinearLayout) ViewBindings.a(R.id.bass_layout, view)) != null) {
            i2 = R.id.eq_bass;
            AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) ViewBindings.a(R.id.eq_bass, view);
            if (appCompatSeekBar != null) {
                i2 = R.id.eq_treble;
                AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) ViewBindings.a(R.id.eq_treble, view);
                if (appCompatSeekBar2 != null) {
                    i2 = R.id.eq_volume;
                    AppCompatSeekBar appCompatSeekBar3 = (AppCompatSeekBar) ViewBindings.a(R.id.eq_volume, view);
                    if (appCompatSeekBar3 != null) {
                        i2 = R.id.image_close_screen;
                        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_close_screen, view);
                        if (imageView != null) {
                            i2 = R.id.play_progress_bar;
                            AppCompatSeekBar appCompatSeekBar4 = (AppCompatSeekBar) ViewBindings.a(R.id.play_progress_bar, view);
                            if (appCompatSeekBar4 != null) {
                                i2 = R.id.player_buttons;
                                if (((LinearLayout) ViewBindings.a(R.id.player_buttons, view)) != null) {
                                    i2 = R.id.player_go_back_15_sec;
                                    ImageView imageView2 = (ImageView) ViewBindings.a(R.id.player_go_back_15_sec, view);
                                    if (imageView2 != null) {
                                        i2 = R.id.player_go_forward_15_sec;
                                        ImageView imageView3 = (ImageView) ViewBindings.a(R.id.player_go_forward_15_sec, view);
                                        if (imageView3 != null) {
                                            i2 = R.id.player_next_btn;
                                            ImageView imageView4 = (ImageView) ViewBindings.a(R.id.player_next_btn, view);
                                            if (imageView4 != null) {
                                                i2 = R.id.player_play_pause_btn;
                                                ImageView imageView5 = (ImageView) ViewBindings.a(R.id.player_play_pause_btn, view);
                                                if (imageView5 != null) {
                                                    i2 = R.id.player_previous_btn;
                                                    ImageView imageView6 = (ImageView) ViewBindings.a(R.id.player_previous_btn, view);
                                                    if (imageView6 != null) {
                                                        i2 = R.id.progress_bar_background;
                                                        if (((ImageView) ViewBindings.a(R.id.progress_bar_background, view)) != null) {
                                                            i2 = R.id.song_album;
                                                            TextView textView = (TextView) ViewBindings.a(R.id.song_album, view);
                                                            if (textView != null) {
                                                                i2 = R.id.song_artist;
                                                                TextView textView2 = (TextView) ViewBindings.a(R.id.song_artist, view);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.song_layout;
                                                                    if (((RelativeLayout) ViewBindings.a(R.id.song_layout, view)) != null) {
                                                                        i2 = R.id.song_title;
                                                                        TextView textView3 = (TextView) ViewBindings.a(R.id.song_title, view);
                                                                        if (textView3 != null) {
                                                                            i2 = R.id.spotify_logo;
                                                                            if (((ImageView) ViewBindings.a(R.id.spotify_logo, view)) != null) {
                                                                                i2 = R.id.treble_layout;
                                                                                if (((LinearLayout) ViewBindings.a(R.id.treble_layout, view)) != null) {
                                                                                    i2 = R.id.volume_layout;
                                                                                    if (((LinearLayout) ViewBindings.a(R.id.volume_layout, view)) != null) {
                                                                                        return new FragmentTrunkSpeakerEqualizerBinding(appCompatSeekBar, appCompatSeekBar2, appCompatSeekBar3, imageView, appCompatSeekBar4, imageView2, imageView3, imageView4, imageView5, imageView6, textView, textView2, textView3);
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
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
