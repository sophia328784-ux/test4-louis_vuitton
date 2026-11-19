package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.ViewProvider;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerControlView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.vuitton.android.R;
import defpackage.dc;
import defpackage.hn0;
import defpackage.md;
import defpackage.oj;
import defpackage.x1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class PlayerControlView extends FrameLayout {
    public static final float[] K1;
    public final TextView A;
    public int A1;
    public final ImageView B;
    public boolean B1;
    public final ImageView C;
    public int C1;
    public final ImageView D;
    public int D1;
    public final ImageView E;
    public long[] E1;
    public final ImageView F;
    public boolean[] F1;
    public final ImageView G;
    public final long[] G1;
    public final View H;
    public final boolean[] H1;
    public final View I;
    public long I1;
    public final View J;
    public boolean J1;
    public final TextView K;
    public final TextView L;
    public final TimeBar M;
    public final StringBuilder N;
    public final Formatter O;
    public final Timeline.Period P;
    public final Timeline.Window Q;
    public final hn0 R;
    public final Drawable S;
    public final Drawable T;
    public final Drawable V;
    public final Drawable W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlayerControlViewLayoutManager f17979b;
    public final String b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Resources f17980c;
    public final String c1;
    public final Handler d;
    public final Drawable d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ComponentListener f17981e;
    public final Drawable e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f17982f;
    public final float f1;
    public final Method g;
    public final float g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Method f17983h;
    public final Drawable h0;
    public final String h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f17984i;
    public final String i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Method f17985j;
    public final Drawable j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Method f17986k;
    public final Drawable k1;
    public final CopyOnWriteArrayList l;
    public final String l1;
    public final RecyclerView m;
    public final String m1;
    public final SettingsAdapter n;
    public final Drawable n1;
    public final PlaybackSpeedAdapter o;
    public final Drawable o1;
    public final TextTrackSelectionAdapter p;
    public final String p1;
    public final AudioTrackSelectionAdapter q;
    public final String q1;
    public final DefaultTrackNameProvider r;
    public Player r1;
    public final PopupWindow s;
    public ProgressUpdateListener s1;
    public final int t;
    public final String t0;
    public OnFullScreenModeChangedListener t1;
    public final ImageView u;
    public boolean u1;
    public final ImageView v;
    public boolean v1;
    public final ImageView w;
    public boolean w1;
    public final View x;
    public boolean x1;
    public final View y;
    public boolean y1;
    public final TextView z;
    public boolean z1;

    public final class AudioTrackSelectionAdapter extends TrackSelectionAdapter {
        public AudioTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void c(SubSettingViewHolder subSettingViewHolder) {
            subSettingViewHolder.f18001b.setText(R.string.exo_track_selection_auto);
            Player player = PlayerControlView.this.r1;
            player.getClass();
            int i2 = 0;
            subSettingViewHolder.f18002c.setVisibility(e(player.d0()) ? 4 : 0);
            subSettingViewHolder.itemView.setOnClickListener(new a(this, i2));
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void d(String str) {
            PlayerControlView.this.n.f17999c[1] = str;
        }

        public final boolean e(TrackSelectionParameters trackSelectionParameters) {
            for (int i2 = 0; i2 < this.f18006b.size(); i2++) {
                if (trackSelectionParameters.H.containsKey(((TrackInformation) this.f18006b.get(i2)).f18003a.f14017b)) {
                    return true;
                }
            }
            return false;
        }

        public final void f() {
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player = playerControlView.r1;
            if (player == null || !player.R0(29)) {
                return;
            }
            TrackSelectionParameters trackSelectionParametersD0 = playerControlView.r1.d0();
            Player player2 = playerControlView.r1;
            String str = Util.f14242a;
            player2.F0(trackSelectionParametersD0.a().d(1).m(1, false).b());
            SettingsAdapter settingsAdapter = playerControlView.n;
            settingsAdapter.f17999c[1] = playerControlView.getResources().getString(R.string.exo_track_selection_auto);
            playerControlView.s.dismiss();
        }
    }

    public final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        public ComponentListener() {
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public final void e(long j2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.z1 = true;
            TextView textView = playerControlView.L;
            if (textView != null) {
                textView.setText(Util.E(playerControlView.N, playerControlView.O, j2));
            }
            playerControlView.f17979b.f();
            Player player = playerControlView.r1;
            if (player != null && playerControlView.B1) {
                if (playerControlView.i(player)) {
                    try {
                        Method method = playerControlView.g;
                        method.getClass();
                        method.invoke(playerControlView.r1, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        x1.m(e2);
                        return;
                    }
                } else if (playerControlView.h(playerControlView.r1)) {
                    try {
                        Method method2 = playerControlView.f17985j;
                        method2.getClass();
                        method2.invoke(playerControlView.r1, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e3) {
                        x1.m(e3);
                        return;
                    }
                } else {
                    StringBuilder sb = new StringBuilder("Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=");
                    Player player2 = playerControlView.r1;
                    player2.getClass();
                    sb.append(player2.getClass());
                    Log.g(sb.toString());
                }
            }
            if (playerControlView.k(playerControlView.r1)) {
                PlayerControlView.a(playerControlView, playerControlView.r1, j2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void f0(Player player, Player.Events events) {
            FlagSet flagSet = events.f13927a;
            boolean zA = flagSet.a(4, 5, 13);
            PlayerControlView playerControlView = PlayerControlView.this;
            if (zA) {
                float[] fArr = PlayerControlView.K1;
                playerControlView.p();
            }
            if (flagSet.a(4, 5, 7, 13)) {
                float[] fArr2 = PlayerControlView.K1;
                playerControlView.r();
            }
            if (flagSet.a(8, 13)) {
                float[] fArr3 = PlayerControlView.K1;
                playerControlView.s();
            }
            if (flagSet.a(9, 13)) {
                float[] fArr4 = PlayerControlView.K1;
                playerControlView.u();
            }
            if (flagSet.a(8, 9, 11, 0, 16, 17, 13)) {
                float[] fArr5 = PlayerControlView.K1;
                playerControlView.o();
            }
            if (flagSet.a(11, 0, 13)) {
                float[] fArr6 = PlayerControlView.K1;
                playerControlView.v();
            }
            if (flagSet.a(12, 13)) {
                float[] fArr7 = PlayerControlView.K1;
                playerControlView.q();
            }
            if (flagSet.a(2, 13)) {
                float[] fArr8 = PlayerControlView.K1;
                playerControlView.w();
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlayerControlView playerControlView = PlayerControlView.this;
            ImageView imageView = playerControlView.E;
            View view2 = playerControlView.J;
            View view3 = playerControlView.I;
            View view4 = playerControlView.H;
            PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView.f17979b;
            Callback.n(view);
            try {
                Player player = playerControlView.r1;
                if (player == null) {
                    return;
                }
                playerControlViewLayoutManager.g();
                if (playerControlView.v == view) {
                    if (player.R0(9)) {
                        player.q();
                    }
                } else if (playerControlView.u == view) {
                    if (player.R0(7)) {
                        player.l();
                    }
                } else if (playerControlView.x == view) {
                    if (player.h() != 4 && player.R0(12)) {
                        player.y();
                    }
                } else if (playerControlView.y == view) {
                    if (player.R0(11)) {
                        player.z();
                    }
                } else if (playerControlView.w == view) {
                    if (Util.b0(player, playerControlView.x1)) {
                        Util.G(player);
                    } else if (player.R0(1)) {
                        player.pause();
                    }
                } else if (playerControlView.B == view) {
                    if (player.R0(15)) {
                        int i2 = player.i();
                        int i3 = playerControlView.D1;
                        for (int i4 = 1; i4 <= 2; i4++) {
                            int i5 = (i2 + i4) % 3;
                            if (i5 != 0) {
                                if (i5 != 1) {
                                    if (i5 == 2 && (i3 & 2) != 0) {
                                    }
                                } else if ((i3 & 1) == 0) {
                                }
                            }
                            i2 = i5;
                        }
                        player.E0(i2);
                    }
                } else if (playerControlView.C == view) {
                    if (player.R0(14)) {
                        player.j0(!player.w());
                    }
                } else if (view4 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.n, view4);
                } else if (view3 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.o, view3);
                } else if (view2 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.q, view2);
                } else if (imageView == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.p, imageView);
                }
            } finally {
                Callback.o();
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            PlayerControlView playerControlView = PlayerControlView.this;
            if (playerControlView.J1) {
                playerControlView.f17979b.g();
            }
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public final void x(long j2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            TextView textView = playerControlView.L;
            if (textView != null) {
                textView.setText(Util.E(playerControlView.N, playerControlView.O, j2));
            }
            if (playerControlView.k(playerControlView.r1)) {
                PlayerControlView.a(playerControlView, playerControlView.r1, j2);
            }
        }

        @Override // androidx.media3.ui.TimeBar.OnScrubListener
        public final void z(long j2, boolean z) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.z1 = false;
            Player player = playerControlView.r1;
            if (player != null) {
                if (!z) {
                    PlayerControlView.a(playerControlView, player, j2);
                }
                if (playerControlView.i(playerControlView.r1)) {
                    try {
                        Method method = playerControlView.g;
                        method.getClass();
                        method.invoke(playerControlView.r1, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        x1.m(e2);
                        return;
                    }
                } else if (playerControlView.h(playerControlView.r1)) {
                    try {
                        Method method2 = playerControlView.f17985j;
                        method2.getClass();
                        method2.invoke(playerControlView.r1, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e3) {
                        x1.m(e3);
                        return;
                    }
                }
            }
            playerControlView.f17979b.g();
        }
    }

    @Deprecated
    public interface OnFullScreenModeChangedListener {
        void x(boolean z);
    }

    public final class PlaybackSpeedAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f17991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f17992c;
        public int d;

        public PlaybackSpeedAdapter(String[] strArr, float[] fArr) {
            this.f17991b = strArr;
            this.f17992c = fArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.f17991b.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i2) {
            SubSettingViewHolder subSettingViewHolder = (SubSettingViewHolder) viewHolder;
            String[] strArr = this.f17991b;
            if (i2 < strArr.length) {
                subSettingViewHolder.f18001b.setText(strArr[i2]);
            }
            if (i2 == this.d) {
                subSettingViewHolder.itemView.setSelected(true);
                subSettingViewHolder.f18002c.setVisibility(0);
            } else {
                subSettingViewHolder.itemView.setSelected(false);
                subSettingViewHolder.f18002c.setVisibility(4);
            }
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayerControlView.PlaybackSpeedAdapter playbackSpeedAdapter = this.f18078b;
                    Callback.n(view);
                    try {
                        PlayerControlView playerControlView = PlayerControlView.this;
                        int i3 = playbackSpeedAdapter.d;
                        int i4 = i2;
                        if (i4 != i3) {
                            playerControlView.setPlaybackSpeed(playbackSpeedAdapter.f17992c[i4]);
                        }
                        playerControlView.s.dismiss();
                    } finally {
                        Callback.o();
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }
    }

    public interface ProgressUpdateListener {
        void a();
    }

    public final class SettingViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ int f17994f = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f17995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TextView f17996c;
        public final ImageView d;

        public SettingViewHolder(View view) {
            super(view);
            this.f17995b = (TextView) view.findViewById(R.id.exo_main_text);
            this.f17996c = (TextView) view.findViewById(R.id.exo_sub_text);
            this.d = (ImageView) view.findViewById(R.id.exo_icon);
            view.setOnClickListener(new a(this, 1));
        }
    }

    public class SettingsAdapter extends RecyclerView.Adapter<SettingViewHolder> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String[] f17998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String[] f17999c;
        public final Drawable[] d;

        public SettingsAdapter(String[] strArr, Drawable[] drawableArr) {
            this.f17998b = strArr;
            this.f17999c = new String[strArr.length];
            this.d = drawableArr;
        }

        public final boolean a(int i2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player = playerControlView.r1;
            if (player == null) {
                return false;
            }
            if (i2 != 0) {
                return i2 != 1 || (player.R0(30) && playerControlView.r1.R0(29));
            }
            return player.R0(13);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.f17998b.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long getItemId(int i2) {
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            SettingViewHolder settingViewHolder = (SettingViewHolder) viewHolder;
            if (a(i2)) {
                settingViewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                settingViewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
            }
            settingViewHolder.f17995b.setText(this.f17998b[i2]);
            String str = this.f17999c[i2];
            TextView textView = settingViewHolder.f17996c;
            if (str == null) {
                textView.setVisibility(8);
            } else {
                textView.setText(str);
            }
            Drawable drawable = this.d[i2];
            ImageView imageView = settingViewHolder.d;
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(drawable);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            PlayerControlView playerControlView = PlayerControlView.this;
            return playerControlView.new SettingViewHolder(LayoutInflater.from(playerControlView.getContext()).inflate(R.layout.exo_styled_settings_list_item, viewGroup, false));
        }
    }

    public static class SubSettingViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f18001b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final View f18002c;

        public SubSettingViewHolder(View view) {
            super(view);
            this.f18001b = (TextView) view.findViewById(R.id.exo_text);
            this.f18002c = view.findViewById(R.id.exo_check);
        }
    }

    public final class TextTrackSelectionAdapter extends TrackSelectionAdapter {
        public TextTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i2) {
            super.onBindViewHolder(subSettingViewHolder, i2);
            if (i2 > 0) {
                TrackInformation trackInformation = (TrackInformation) this.f18006b.get(i2 - 1);
                subSettingViewHolder.f18002c.setVisibility(trackInformation.f18003a.f14019e[trackInformation.f18004b] ? 0 : 4);
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void c(SubSettingViewHolder subSettingViewHolder) {
            boolean z;
            subSettingViewHolder.f18001b.setText(R.string.exo_track_selection_none);
            int i2 = 0;
            while (true) {
                if (i2 >= this.f18006b.size()) {
                    z = true;
                    break;
                }
                TrackInformation trackInformation = (TrackInformation) this.f18006b.get(i2);
                if (trackInformation.f18003a.f14019e[trackInformation.f18004b]) {
                    z = false;
                    break;
                }
                i2++;
            }
            subSettingViewHolder.f18002c.setVisibility(z ? 0 : 4);
            subSettingViewHolder.itemView.setOnClickListener(new a(this, 2));
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void d(String str) {
        }

        public final void e(List list) {
            PlayerControlView playerControlView = PlayerControlView.this;
            ImageView imageView = playerControlView.E;
            boolean z = false;
            for (int i2 = 0; i2 < list.size(); i2++) {
                TrackInformation trackInformation = (TrackInformation) list.get(i2);
                if (trackInformation.f18003a.f14019e[trackInformation.f18004b]) {
                    z = true;
                    break;
                }
            }
            if (imageView != null) {
                imageView.setImageDrawable(z ? playerControlView.j1 : playerControlView.k1);
                imageView.setContentDescription(z ? playerControlView.l1 : playerControlView.m1);
            }
            this.f18006b = list;
        }

        public final /* synthetic */ void f() {
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player = playerControlView.r1;
            if (player == null || !player.R0(29)) {
                return;
            }
            playerControlView.r1.F0(playerControlView.r1.d0().a().d(3).h().j().l().b());
            playerControlView.s.dismiss();
        }
    }

    public static final class TrackInformation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Tracks.Group f18003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f18005c;

        /* JADX WARN: Multi-variable type inference failed */
        public TrackInformation(Tracks tracks, int i2, int i3, String str) {
            this.f18003a = (Tracks.Group) tracks.f14012a.get(i2);
            this.f18004b = i3;
            this.f18005c = str;
        }
    }

    public abstract class TrackSelectionAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f18006b = new ArrayList();

        public TrackSelectionAdapter() {
        }

        public final void a(Player player, TrackGroup trackGroup, TrackInformation trackInformation) {
            if (player.R0(29)) {
                player.F0(player.d0().a().i(new TrackSelectionOverride(trackGroup, ImmutableList.A(Integer.valueOf(trackInformation.f18004b)))).m(trackInformation.f18003a.f14017b.f13979c, false).b());
                d(trackInformation.f18005c);
                PlayerControlView.this.s.dismiss();
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0033  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b */
        public void onBindViewHolder(SubSettingViewHolder subSettingViewHolder, int i2) {
            boolean z;
            final Player player = PlayerControlView.this.r1;
            if (player == null) {
                return;
            }
            if (i2 == 0) {
                c(subSettingViewHolder);
                return;
            }
            final TrackInformation trackInformation = (TrackInformation) this.f18006b.get(i2 - 1);
            final TrackGroup trackGroup = trackInformation.f18003a.f14017b;
            if (player.d0().H.get(trackGroup) != null) {
                z = trackInformation.f18003a.f14019e[trackInformation.f18004b];
            }
            subSettingViewHolder.f18001b.setText(trackInformation.f18005c);
            subSettingViewHolder.f18002c.setVisibility(z ? 0 : 4);
            subSettingViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayerControlView.TrackSelectionAdapter trackSelectionAdapter = this.f18080b;
                    Player player2 = player;
                    TrackGroup trackGroup2 = trackGroup;
                    PlayerControlView.TrackInformation trackInformation2 = trackInformation;
                    Callback.n(view);
                    try {
                        trackSelectionAdapter.a(player2, trackGroup2, trackInformation2);
                    } finally {
                        Callback.o();
                    }
                }
            });
        }

        public abstract void c(SubSettingViewHolder subSettingViewHolder);

        public abstract void d(String str);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            if (this.f18006b.isEmpty()) {
                return 0;
            }
            return this.f18006b.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }
    }

    @Deprecated
    public interface VisibilityListener {
        void e(int i2);
    }

    static {
        MediaLibraryInfo.a("media3.ui");
        K1 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [android.os.Handler$Callback, android.view.View, android.widget.TextView] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    public PlayerControlView(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) throws NoSuchMethodException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int resourceId;
        int resourceId2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int i16;
        Method method;
        Method method2;
        Class<?> cls;
        Method method3;
        Method method4;
        int i17;
        ImageView imageView;
        boolean z9;
        ?? r13;
        super(context, attributeSet, i2);
        Class cls2 = Boolean.TYPE;
        this.x1 = true;
        this.A1 = 5000;
        this.D1 = 0;
        this.C1 = 200;
        int resourceId3 = R.layout.exo_player_control_view;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.f18042c, i2, 0);
            try {
                resourceId3 = typedArrayObtainStyledAttributes.getResourceId(6, R.layout.exo_player_control_view);
                int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(12, R.drawable.exo_styled_controls_play);
                int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(11, R.drawable.exo_styled_controls_pause);
                int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(10, R.drawable.exo_styled_controls_next);
                int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(7, R.drawable.exo_styled_controls_simple_fastforward);
                int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(15, R.drawable.exo_styled_controls_previous);
                int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(20, R.drawable.exo_styled_controls_simple_rewind);
                int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(9, R.drawable.exo_styled_controls_fullscreen_exit);
                int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(8, R.drawable.exo_styled_controls_fullscreen_enter);
                int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(17, R.drawable.exo_styled_controls_repeat_off);
                int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(18, R.drawable.exo_styled_controls_repeat_one);
                int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(16, R.drawable.exo_styled_controls_repeat_all);
                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(35, R.drawable.exo_styled_controls_shuffle_on);
                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(34, R.drawable.exo_styled_controls_shuffle_off);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(37, R.drawable.exo_styled_controls_subtitle_on);
                resourceId2 = typedArrayObtainStyledAttributes.getResourceId(36, R.drawable.exo_styled_controls_subtitle_off);
                int resourceId17 = typedArrayObtainStyledAttributes.getResourceId(42, R.drawable.exo_styled_controls_vr);
                this.A1 = typedArrayObtainStyledAttributes.getInt(32, this.A1);
                this.D1 = typedArrayObtainStyledAttributes.getInt(19, this.D1);
                z5 = typedArrayObtainStyledAttributes.getBoolean(29, true);
                z6 = typedArrayObtainStyledAttributes.getBoolean(26, true);
                z7 = typedArrayObtainStyledAttributes.getBoolean(28, true);
                z8 = typedArrayObtainStyledAttributes.getBoolean(27, true);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(30, false);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(31, false);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(33, false);
                this.B1 = typedArrayObtainStyledAttributes.getBoolean(39, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(38, this.C1));
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(2, true);
                typedArrayObtainStyledAttributes.recycle();
                i4 = resourceId4;
                i5 = resourceId5;
                i6 = resourceId6;
                i7 = resourceId7;
                i8 = resourceId8;
                i9 = resourceId9;
                i10 = resourceId10;
                i12 = resourceId13;
                i13 = resourceId14;
                i14 = resourceId15;
                i15 = resourceId16;
                i16 = resourceId17;
                z3 = z11;
                z4 = z12;
                i11 = resourceId12;
                i3 = resourceId11;
                z2 = z10;
                z = z13;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i3 = R.drawable.exo_styled_controls_fullscreen_enter;
            i4 = R.drawable.exo_styled_controls_play;
            i5 = R.drawable.exo_styled_controls_pause;
            i6 = R.drawable.exo_styled_controls_next;
            i7 = R.drawable.exo_styled_controls_simple_fastforward;
            i8 = R.drawable.exo_styled_controls_previous;
            i9 = R.drawable.exo_styled_controls_simple_rewind;
            i10 = R.drawable.exo_styled_controls_fullscreen_exit;
            i11 = R.drawable.exo_styled_controls_repeat_off;
            i12 = R.drawable.exo_styled_controls_repeat_one;
            i13 = R.drawable.exo_styled_controls_repeat_all;
            i14 = R.drawable.exo_styled_controls_shuffle_on;
            i15 = R.drawable.exo_styled_controls_shuffle_off;
            resourceId = R.drawable.exo_styled_controls_subtitle_on;
            resourceId2 = R.drawable.exo_styled_controls_subtitle_off;
            z = true;
            z2 = false;
            z3 = false;
            z4 = false;
            z5 = true;
            z6 = true;
            z7 = true;
            z8 = true;
            i16 = R.drawable.exo_styled_controls_vr;
        }
        LayoutInflater.from(context).inflate(resourceId3, this);
        setDescendantFocusability(262144);
        this.f17981e = new ComponentListener();
        this.l = new CopyOnWriteArrayList();
        this.P = new Timeline.Period();
        this.Q = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.N = sb;
        int i18 = i15;
        this.O = new Formatter(sb, Locale.getDefault());
        this.E1 = new long[0];
        this.F1 = new boolean[0];
        this.G1 = new long[0];
        this.H1 = new boolean[0];
        this.R = new hn0(this, 5);
        Method method5 = null;
        try {
            method = ExoPlayer.class.getMethod("setScrubbingModeEnabled", cls2);
            try {
                method5 = ExoPlayer.class.getMethod("isScrubbingModeEnabled", null);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
            method = null;
        }
        this.f17982f = ExoPlayer.class;
        this.g = method;
        this.f17983h = method5;
        try {
            cls = Class.forName("androidx.media3.transformer.CompositionPlayer");
            try {
                method3 = cls.getMethod("setScrubbingModeEnabled", cls2);
                method2 = null;
                try {
                    method4 = cls.getMethod("isScrubbingModeEnabled", null);
                } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                    method4 = method2;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                method2 = null;
                method3 = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused5) {
            method2 = null;
            cls = null;
            method3 = null;
        }
        this.f17984i = cls;
        this.f17985j = method3;
        this.f17986k = method4;
        this.K = (TextView) findViewById(R.id.exo_duration);
        this.L = (TextView) findViewById(R.id.exo_position);
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_subtitle);
        this.E = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.f17981e);
        }
        ImageView imageView3 = (ImageView) findViewById(R.id.exo_fullscreen);
        this.F = imageView3;
        final int i19 = 0;
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: mo0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f76332c;

            {
                this.f76332c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i20 = i19;
                PlayerControlView playerControlView = this.f76332c;
                switch (i20) {
                    case 0:
                        float[] fArr = PlayerControlView.K1;
                        Callback.n(view);
                        try {
                            boolean z14 = playerControlView.u1;
                            boolean z15 = !z14;
                            String str = playerControlView.q1;
                            Drawable drawable = playerControlView.o1;
                            String str2 = playerControlView.p1;
                            Drawable drawable2 = playerControlView.n1;
                            if (z14 != z15) {
                                playerControlView.u1 = z15;
                                ImageView imageView4 = playerControlView.F;
                                if (imageView4 != null) {
                                    if (z14) {
                                        imageView4.setImageDrawable(drawable);
                                        imageView4.setContentDescription(str);
                                    } else {
                                        imageView4.setImageDrawable(drawable2);
                                        imageView4.setContentDescription(str2);
                                    }
                                }
                                ImageView imageView5 = playerControlView.G;
                                if (imageView5 != null) {
                                    if (z14) {
                                        imageView5.setImageDrawable(drawable);
                                        imageView5.setContentDescription(str);
                                    } else {
                                        imageView5.setImageDrawable(drawable2);
                                        imageView5.setContentDescription(str2);
                                    }
                                }
                                PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener = playerControlView.t1;
                                if (onFullScreenModeChangedListener != null) {
                                    onFullScreenModeChangedListener.x(z15);
                                }
                            }
                            return;
                        } finally {
                            Callback.o();
                        }
                    default:
                        float[] fArr2 = PlayerControlView.K1;
                        Callback.n(view);
                        try {
                            boolean z16 = playerControlView.u1;
                            boolean z17 = !z16;
                            String str3 = playerControlView.q1;
                            Drawable drawable3 = playerControlView.o1;
                            String str4 = playerControlView.p1;
                            Drawable drawable4 = playerControlView.n1;
                            if (z16 != z17) {
                                playerControlView.u1 = z17;
                                ImageView imageView6 = playerControlView.F;
                                if (imageView6 != null) {
                                    if (z16) {
                                        imageView6.setImageDrawable(drawable3);
                                        imageView6.setContentDescription(str3);
                                    } else {
                                        imageView6.setImageDrawable(drawable4);
                                        imageView6.setContentDescription(str4);
                                    }
                                }
                                ImageView imageView7 = playerControlView.G;
                                if (imageView7 != null) {
                                    if (z16) {
                                        imageView7.setImageDrawable(drawable3);
                                        imageView7.setContentDescription(str3);
                                    } else {
                                        imageView7.setImageDrawable(drawable4);
                                        imageView7.setContentDescription(str4);
                                    }
                                }
                                PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener2 = playerControlView.t1;
                                if (onFullScreenModeChangedListener2 != null) {
                                    onFullScreenModeChangedListener2.x(z17);
                                }
                            }
                            return;
                        } finally {
                            Callback.o();
                        }
                }
            }
        };
        if (imageView3 == null) {
            i17 = 8;
        } else {
            i17 = 8;
            imageView3.setVisibility(8);
            imageView3.setOnClickListener(onClickListener);
        }
        ImageView imageView4 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
        this.G = imageView4;
        final int i20 = 1;
        View.OnClickListener onClickListener2 = new View.OnClickListener(this) { // from class: mo0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlayerControlView f76332c;

            {
                this.f76332c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i21 = i20;
                PlayerControlView playerControlView = this.f76332c;
                switch (i21) {
                    case 0:
                        float[] fArr = PlayerControlView.K1;
                        Callback.n(view);
                        try {
                            boolean z14 = playerControlView.u1;
                            boolean z15 = !z14;
                            String str = playerControlView.q1;
                            Drawable drawable = playerControlView.o1;
                            String str2 = playerControlView.p1;
                            Drawable drawable2 = playerControlView.n1;
                            if (z14 != z15) {
                                playerControlView.u1 = z15;
                                ImageView imageView5 = playerControlView.F;
                                if (imageView5 != null) {
                                    if (z14) {
                                        imageView5.setImageDrawable(drawable);
                                        imageView5.setContentDescription(str);
                                    } else {
                                        imageView5.setImageDrawable(drawable2);
                                        imageView5.setContentDescription(str2);
                                    }
                                }
                                ImageView imageView6 = playerControlView.G;
                                if (imageView6 != null) {
                                    if (z14) {
                                        imageView6.setImageDrawable(drawable);
                                        imageView6.setContentDescription(str);
                                    } else {
                                        imageView6.setImageDrawable(drawable2);
                                        imageView6.setContentDescription(str2);
                                    }
                                }
                                PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener = playerControlView.t1;
                                if (onFullScreenModeChangedListener != null) {
                                    onFullScreenModeChangedListener.x(z15);
                                }
                            }
                            return;
                        } finally {
                            Callback.o();
                        }
                    default:
                        float[] fArr2 = PlayerControlView.K1;
                        Callback.n(view);
                        try {
                            boolean z16 = playerControlView.u1;
                            boolean z17 = !z16;
                            String str3 = playerControlView.q1;
                            Drawable drawable3 = playerControlView.o1;
                            String str4 = playerControlView.p1;
                            Drawable drawable4 = playerControlView.n1;
                            if (z16 != z17) {
                                playerControlView.u1 = z17;
                                ImageView imageView7 = playerControlView.F;
                                if (imageView7 != null) {
                                    if (z16) {
                                        imageView7.setImageDrawable(drawable3);
                                        imageView7.setContentDescription(str3);
                                    } else {
                                        imageView7.setImageDrawable(drawable4);
                                        imageView7.setContentDescription(str4);
                                    }
                                }
                                ImageView imageView8 = playerControlView.G;
                                if (imageView8 != null) {
                                    if (z16) {
                                        imageView8.setImageDrawable(drawable3);
                                        imageView8.setContentDescription(str3);
                                    } else {
                                        imageView8.setImageDrawable(drawable4);
                                        imageView8.setContentDescription(str4);
                                    }
                                }
                                PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener2 = playerControlView.t1;
                                if (onFullScreenModeChangedListener2 != null) {
                                    onFullScreenModeChangedListener2.x(z17);
                                }
                            }
                            return;
                        } finally {
                            Callback.o();
                        }
                }
            }
        };
        if (imageView4 != null) {
            imageView4.setVisibility(i17);
            imageView4.setOnClickListener(onClickListener2);
        }
        View viewFindViewById = findViewById(R.id.exo_settings);
        this.H = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.f17981e);
        }
        View viewFindViewById2 = findViewById(R.id.exo_playback_speed);
        this.I = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.f17981e);
        }
        View viewFindViewById3 = findViewById(R.id.exo_audio_track);
        this.J = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.f17981e);
        }
        TimeBar timeBar = (TimeBar) findViewById(R.id.exo_progress);
        View viewFindViewById4 = findViewById(R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.M = timeBar;
            imageView = imageView2;
            z9 = z3;
            r13 = 0;
        } else if (viewFindViewById4 != null) {
            z9 = z3;
            imageView = imageView2;
            r13 = 0;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R.style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R.id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.M = defaultTimeBar;
        } else {
            imageView = imageView2;
            z9 = z3;
            r13 = 0;
            this.M = null;
        }
        TimeBar timeBar2 = this.M;
        if (timeBar2 != null) {
            timeBar2.a(this.f17981e);
        }
        this.d = Util.r(r13);
        Resources resources = context.getResources();
        this.f17980c = resources;
        ImageView imageView5 = (ImageView) findViewById(R.id.exo_play_pause);
        this.w = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(this.f17981e);
        }
        ImageView imageView6 = (ImageView) findViewById(R.id.exo_prev);
        this.u = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(resources.getDrawable(i8, context.getTheme()));
            imageView6.setOnClickListener(this.f17981e);
        }
        ImageView imageView7 = (ImageView) findViewById(R.id.exo_next);
        this.v = imageView7;
        if (imageView7 != null) {
            imageView7.setImageDrawable(resources.getDrawable(i6, context.getTheme()));
            imageView7.setOnClickListener(this.f17981e);
        }
        Typeface typefaceB = ResourcesCompat.b(R.font.roboto_medium_numbers, context);
        ImageView imageView8 = (ImageView) findViewById(R.id.exo_rew);
        TextView textView = (TextView) findViewById(R.id.exo_rew_with_amount);
        if (imageView8 != null) {
            imageView8.setImageDrawable(resources.getDrawable(i9, context.getTheme()));
            this.y = imageView8;
            this.A = null;
        } else if (textView != null) {
            textView.setTypeface(typefaceB);
            this.A = textView;
            this.y = textView;
        } else {
            this.A = r13;
            this.y = r13;
        }
        View view = this.y;
        if (view != null) {
            view.setOnClickListener(this.f17981e);
        }
        ImageView imageView9 = (ImageView) findViewById(R.id.exo_ffwd);
        TextView textView2 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
        if (imageView9 != null) {
            imageView9.setImageDrawable(resources.getDrawable(i7, context.getTheme()));
            this.x = imageView9;
            this.z = null;
        } else if (textView2 != null) {
            textView2.setTypeface(typefaceB);
            this.z = textView2;
            this.x = textView2;
        } else {
            this.z = null;
            this.x = null;
        }
        View view2 = this.x;
        if (view2 != null) {
            view2.setOnClickListener(this.f17981e);
        }
        ImageView imageView10 = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.B = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(this.f17981e);
        }
        ImageView imageView11 = (ImageView) findViewById(R.id.exo_shuffle);
        this.C = imageView11;
        if (imageView11 != null) {
            imageView11.setOnClickListener(this.f17981e);
        }
        this.f1 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.g1 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        ImageView imageView12 = (ImageView) findViewById(R.id.exo_vr);
        this.D = imageView12;
        if (imageView12 != null) {
            imageView12.setImageDrawable(resources.getDrawable(i16, context.getTheme()));
            n(imageView12, false);
        }
        PlayerControlViewLayoutManager playerControlViewLayoutManager = new PlayerControlViewLayoutManager(this);
        this.f17979b = playerControlViewLayoutManager;
        playerControlViewLayoutManager.D = z;
        SettingsAdapter settingsAdapter = new SettingsAdapter(new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
        this.n = settingsAdapter;
        this.t = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
        this.m = recyclerView;
        recyclerView.setAdapter(settingsAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        this.s = popupWindow;
        popupWindow.setOnDismissListener(this.f17981e);
        this.J1 = true;
        this.r = new DefaultTrackNameProvider(getResources());
        this.j1 = resources.getDrawable(resourceId, context.getTheme());
        this.k1 = resources.getDrawable(resourceId2, context.getTheme());
        this.l1 = resources.getString(R.string.exo_controls_cc_enabled_description);
        this.m1 = resources.getString(R.string.exo_controls_cc_disabled_description);
        this.p = new TextTrackSelectionAdapter();
        this.q = new AudioTrackSelectionAdapter();
        this.o = new PlaybackSpeedAdapter(resources.getStringArray(R.array.exo_controls_playback_speeds), K1);
        this.S = resources.getDrawable(i4, context.getTheme());
        this.T = resources.getDrawable(i5, context.getTheme());
        this.n1 = resources.getDrawable(i10, context.getTheme());
        this.o1 = resources.getDrawable(i3, context.getTheme());
        this.V = resources.getDrawable(i11, context.getTheme());
        this.W = resources.getDrawable(i12, context.getTheme());
        this.h0 = resources.getDrawable(i13, context.getTheme());
        this.d1 = resources.getDrawable(i14, context.getTheme());
        this.e1 = resources.getDrawable(i18, context.getTheme());
        this.p1 = resources.getString(R.string.exo_controls_fullscreen_exit_description);
        this.q1 = resources.getString(R.string.exo_controls_fullscreen_enter_description);
        this.t0 = resources.getString(R.string.exo_controls_repeat_off_description);
        this.b1 = resources.getString(R.string.exo_controls_repeat_one_description);
        this.c1 = resources.getString(R.string.exo_controls_repeat_all_description);
        this.h1 = resources.getString(R.string.exo_controls_shuffle_on_description);
        this.i1 = resources.getString(R.string.exo_controls_shuffle_off_description);
        playerControlViewLayoutManager.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
        playerControlViewLayoutManager.h(this.x, z6);
        playerControlViewLayoutManager.h(this.y, z5);
        playerControlViewLayoutManager.h(imageView6, z7);
        playerControlViewLayoutManager.h(imageView7, z8);
        playerControlViewLayoutManager.h(imageView11, z2);
        playerControlViewLayoutManager.h(imageView, z9);
        playerControlViewLayoutManager.h(imageView12, z4);
        playerControlViewLayoutManager.h(imageView10, this.D1 != 0);
        addOnLayoutChangeListener(new oj(this, 1));
    }

    public static void a(PlayerControlView playerControlView, Player player, long j2) {
        if (playerControlView.y1) {
            if (player.R0(17) && player.R0(10)) {
                Timeline timelineP = player.p();
                int iO = timelineP.o();
                int i2 = 0;
                while (true) {
                    long jF0 = Util.f0(timelineP.m(i2, playerControlView.Q, 0L).m);
                    if (j2 < jF0) {
                        break;
                    }
                    if (i2 == iO - 1) {
                        j2 = jF0;
                        break;
                    } else {
                        j2 -= jF0;
                        i2++;
                    }
                }
                player.h0(i2, j2);
            }
        } else if (player.R0(5)) {
            player.seekTo(j2);
        }
        playerControlView.r();
    }

    public static boolean c(Player player, Timeline.Window window) {
        Timeline timelineP;
        int iO;
        if (player.R0(17) && (iO = (timelineP = player.p()).o()) > 1 && iO <= 100) {
            for (int i2 = 0; i2 < iO; i2++) {
                if (timelineP.m(i2, window, 0L).m != -9223372036854775807L) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f2) {
        Player player = this.r1;
        if (player == null || !player.R0(13)) {
            return;
        }
        Player player2 = this.r1;
        player2.d(new PlaybackParameters(f2, player2.a().f13920b));
    }

    public final boolean d(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.r1;
        if (player == null) {
            return false;
        }
        if (keyCode != 90 && keyCode != 89 && keyCode != 85 && keyCode != 79 && keyCode != 126 && keyCode != 127 && keyCode != 87 && keyCode != 88) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (player.h() != 4 && player.R0(12)) {
                    player.y();
                }
            } else if (keyCode == 89 && player.R0(11)) {
                player.z();
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 79 || keyCode == 85) {
                    if (Util.b0(player, this.x1)) {
                        Util.G(player);
                    } else if (player.R0(1)) {
                        player.pause();
                    }
                } else if (keyCode != 87) {
                    if (keyCode != 88) {
                        if (keyCode == 126) {
                            Util.G(player);
                        } else if (keyCode == 127) {
                            String str = Util.f14242a;
                            if (player.R0(1)) {
                                player.pause();
                            }
                        }
                    } else if (player.R0(7)) {
                        player.l();
                    }
                } else if (player.R0(9)) {
                    player.q();
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return d(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public final void e(RecyclerView.Adapter adapter, View view) {
        this.m.setAdapter(adapter);
        t();
        this.J1 = false;
        PopupWindow popupWindow = this.s;
        popupWindow.dismiss();
        this.J1 = true;
        int width = getWidth() - popupWindow.getWidth();
        int i2 = this.t;
        popupWindow.showAsDropDown(view, width - i2, (-popupWindow.getHeight()) - i2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0030  */
    /* JADX WARN: Code duplicated, block: B:22:0x006d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0075  */
    /* JADX WARN: Multi-variable type inference failed */
    public final ImmutableList f(Tracks tracks, int i2) {
        String strA;
        String string;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList immutableList = tracks.f14012a;
        int i3 = 0;
        while (i3 < immutableList.size()) {
            Tracks.Group group = (Tracks.Group) immutableList.get(i3);
            if (group.f14017b.f13979c == i2) {
                int i4 = 0;
                while (i4 < group.f14016a) {
                    if (group.d[i4] == 4) {
                        Format format = group.f14017b.d[i4];
                        int i5 = format.f13758e;
                        int i6 = format.f13762j;
                        if ((i5 & 2) == 0) {
                            DefaultTrackNameProvider defaultTrackNameProvider = this.r;
                            Resources resources = defaultTrackNameProvider.f17978a;
                            Resources resources2 = defaultTrackNameProvider.f17978a;
                            String str = format.o;
                            int i7 = format.G;
                            int i8 = format.w;
                            int i9 = format.v;
                            String str2 = format.f13763k;
                            int i10 = MimeTypes.i(str);
                            if (i10 == -1) {
                                if (MimeTypes.j(str2) != null) {
                                    i10 = 2;
                                } else if (MimeTypes.b(str2) != null) {
                                    i10 = 1;
                                } else if (i9 != -1 || i8 != -1) {
                                    i10 = 2;
                                } else if (i7 == -1 && format.H == -1) {
                                    i10 = -1;
                                } else {
                                    i10 = 1;
                                }
                            }
                            if (i10 == 2) {
                                strA = defaultTrackNameProvider.c(defaultTrackNameProvider.b(format), (i9 == -1 || i8 == -1) ? "" : resources.getString(R.string.exo_track_resolution, Integer.valueOf(i9), Integer.valueOf(i8)), i6 != -1 ? resources2.getString(R.string.exo_track_bitrate, Float.valueOf(i6 / 1000000.0f)) : "");
                            } else if (i10 == 1) {
                                String strA2 = defaultTrackNameProvider.a(format);
                                if (i7 == -1 || i7 < 1) {
                                    string = "";
                                } else if (i7 == 1) {
                                    string = resources.getString(R.string.exo_track_mono);
                                } else if (i7 == 2) {
                                    string = resources.getString(R.string.exo_track_stereo);
                                } else if (i7 == 6 || i7 == 7) {
                                    string = resources.getString(R.string.exo_track_surround_5_point_1);
                                } else {
                                    string = i7 != 8 ? resources.getString(R.string.exo_track_surround) : resources.getString(R.string.exo_track_surround_7_point_1);
                                }
                                strA = defaultTrackNameProvider.c(strA2, string, i6 != -1 ? resources2.getString(R.string.exo_track_bitrate, Float.valueOf(i6 / 1000000.0f)) : "");
                            } else {
                                strA = defaultTrackNameProvider.a(format);
                            }
                            if (strA.isEmpty()) {
                                String str3 = format.d;
                                strA = (str3 == null || str3.trim().isEmpty()) ? resources.getString(R.string.exo_track_unknown) : resources.getString(R.string.exo_track_unknown_name, str3);
                            }
                            builder.e(new TrackInformation(tracks, i3, i4, strA));
                        }
                    }
                    i4++;
                    immutableList = immutableList;
                    group = group;
                }
            }
            i3++;
            immutableList = immutableList;
        }
        return builder.j();
    }

    public final void g() {
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f17979b;
        int i2 = playerControlViewLayoutManager.A;
        if (i2 == 3 || i2 == 2) {
            return;
        }
        playerControlViewLayoutManager.f();
        if (!playerControlViewLayoutManager.D) {
            playerControlViewLayoutManager.i(2);
        } else if (playerControlViewLayoutManager.A == 1) {
            playerControlViewLayoutManager.n.start();
        } else {
            playerControlViewLayoutManager.o.start();
        }
    }

    public Player getPlayer() {
        return this.r1;
    }

    public int getRepeatToggleModes() {
        return this.D1;
    }

    public boolean getShowShuffleButton() {
        return this.f17979b.b(this.C);
    }

    public boolean getShowSubtitleButton() {
        return this.f17979b.b(this.E);
    }

    public int getShowTimeoutMs() {
        return this.A1;
    }

    public boolean getShowVrButton() {
        return this.f17979b.b(this.D);
    }

    public final boolean h(Player player) {
        Class cls;
        return (player == null || (cls = this.f17984i) == null || !cls.isAssignableFrom(player.getClass())) ? false : true;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean i(Player player) {
        Class cls;
        return (player == null || (cls = this.f17982f) == null || !cls.isAssignableFrom(player.getClass())) ? false : true;
    }

    public final boolean j() {
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f17979b;
        return playerControlViewLayoutManager.A == 0 && playerControlViewLayoutManager.f18008a.l();
    }

    public final boolean k(Player player) {
        try {
            if (i(player)) {
                Method method = this.f17983h;
                method.getClass();
                Object objInvoke = method.invoke(player, null);
                objInvoke.getClass();
                if (((Boolean) objInvoke).booleanValue()) {
                    return true;
                }
            }
            if (h(player)) {
                Method method2 = this.f17986k;
                method2.getClass();
                Object objInvoke2 = method2.invoke(player, null);
                objInvoke2.getClass();
                if (((Boolean) objInvoke2).booleanValue()) {
                    return true;
                }
            }
            return false;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            x1.m(e2);
            return false;
        }
    }

    public final boolean l() {
        return getVisibility() == 0;
    }

    public final void m() {
        p();
        o();
        s();
        u();
        w();
        q();
        v();
    }

    public final void n(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f1 : this.g1);
    }

    public final void o() {
        boolean zR0;
        boolean zR1;
        boolean zR2;
        boolean zR3;
        boolean zR4;
        if (l() && this.v1) {
            Player player = this.r1;
            if (player != null) {
                zR0 = (this.w1 && c(player, this.Q)) ? player.R0(10) : player.R0(5);
                zR2 = player.R0(7);
                zR3 = player.R0(11);
                zR4 = player.R0(12);
                zR1 = player.R0(9);
            } else {
                zR0 = false;
                zR1 = false;
                zR2 = false;
                zR3 = false;
                zR4 = false;
            }
            Resources resources = this.f17980c;
            View view = this.y;
            if (zR3) {
                Player player2 = this.r1;
                int iN0 = (int) ((player2 != null ? player2.N0() : LiveTranslationEntity.DefaultSentenceTimeOut) / 1000);
                TextView textView = this.A;
                if (textView != null) {
                    textView.setText(String.valueOf(iN0));
                }
                if (view != null) {
                    view.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, iN0, Integer.valueOf(iN0)));
                }
            }
            View view2 = this.x;
            if (zR4) {
                Player player3 = this.r1;
                int iZ0 = (int) ((player3 != null ? player3.z0() : 15000L) / 1000);
                TextView textView2 = this.z;
                if (textView2 != null) {
                    textView2.setText(String.valueOf(iZ0));
                }
                if (view2 != null) {
                    view2.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, iZ0, Integer.valueOf(iZ0)));
                }
            }
            n(this.u, zR2);
            n(view, zR3);
            n(view2, zR4);
            n(this.v, zR1);
            TimeBar timeBar = this.M;
            if (timeBar != null) {
                timeBar.setEnabled(zR0);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f17979b;
        playerControlViewLayoutManager.f18008a.addOnLayoutChangeListener(playerControlViewLayoutManager.y);
        this.v1 = true;
        if (j()) {
            playerControlViewLayoutManager.g();
        }
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.f17979b;
        playerControlViewLayoutManager.f18008a.removeOnLayoutChangeListener(playerControlViewLayoutManager.y);
        this.v1 = false;
        removeCallbacks(this.R);
        playerControlViewLayoutManager.f();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        View view = this.f17979b.f18009b;
        if (view != null) {
            view.layout(0, 0, i4 - i2, i5 - i3);
        }
    }

    public final void p() {
        ImageView imageView;
        if (l() && this.v1 && (imageView = this.w) != null) {
            boolean zB0 = Util.b0(this.r1, this.x1);
            Drawable drawable = zB0 ? this.S : this.T;
            int i2 = zB0 ? R.string.exo_controls_play_description : R.string.exo_controls_pause_description;
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(this.f17980c.getString(i2));
            Player player = this.r1;
            boolean z = false;
            if (player != null) {
                int iH = player.h();
                boolean z2 = (player.R0(16) && player.O0() == null) ? false : true;
                boolean zR0 = player.R0(1);
                boolean z3 = iH == 1 && player.R0(2);
                boolean z4 = iH == 4 && player.R0(4);
                if (z2 && (zR0 || z3 || z4)) {
                    z = true;
                }
            }
            n(imageView, z);
        }
    }

    public final void q() {
        PlaybackSpeedAdapter playbackSpeedAdapter;
        Player player = this.r1;
        if (player == null) {
            return;
        }
        float f2 = player.a().f13919a;
        float f3 = Float.MAX_VALUE;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            playbackSpeedAdapter = this.o;
            float[] fArr = playbackSpeedAdapter.f17992c;
            if (i2 >= fArr.length) {
                break;
            }
            float fAbs = Math.abs(f2 - fArr[i2]);
            if (fAbs < f3) {
                i3 = i2;
                f3 = fAbs;
            }
            i2++;
        }
        playbackSpeedAdapter.d = i3;
        String str = playbackSpeedAdapter.f17991b[i3];
        SettingsAdapter settingsAdapter = this.n;
        settingsAdapter.f17999c[0] = str;
        n(this.H, settingsAdapter.a(1) || settingsAdapter.a(0));
    }

    public final void r() {
        long jU;
        long jX;
        if (l() && this.v1) {
            Player player = this.r1;
            if (player == null || !player.R0(16)) {
                jU = 0;
                jX = 0;
            } else {
                jU = player.u() + this.I1;
                jX = player.x() + this.I1;
            }
            TextView textView = this.L;
            if (textView != null && !this.z1) {
                textView.setText(Util.E(this.N, this.O, jU));
            }
            TimeBar timeBar = this.M;
            if (timeBar != null) {
                timeBar.setPosition(jU);
                if (k(player)) {
                    jX = jU;
                }
                timeBar.setBufferedPosition(jX);
            }
            ProgressUpdateListener progressUpdateListener = this.s1;
            if (progressUpdateListener != null) {
                progressUpdateListener.a();
            }
            hn0 hn0Var = this.R;
            removeCallbacks(hn0Var);
            int iH = player == null ? 1 : player.h();
            if (player != null && player.isPlaying()) {
                long jMin = Math.min(timeBar != null ? timeBar.getPreferredUpdateDelay() : 1000L, 1000 - (jU % 1000));
                float f2 = player.a().f13919a;
                postDelayed(hn0Var, Util.k(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? (long) (jMin / f2) : 1000L, this.C1, 1000L));
            } else {
                if (iH == 4 || iH == 1) {
                    return;
                }
                postDelayed(hn0Var, 1000L);
            }
        }
    }

    public final void s() {
        ImageView imageView;
        if (l() && this.v1 && (imageView = this.B) != null) {
            if (this.D1 == 0) {
                n(imageView, false);
                return;
            }
            Player player = this.r1;
            String str = this.t0;
            Drawable drawable = this.V;
            if (player == null || !player.R0(15)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            int i2 = player.i();
            if (i2 == 0) {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            } else if (i2 == 1) {
                imageView.setImageDrawable(this.W);
                imageView.setContentDescription(this.b1);
            } else {
                if (i2 != 2) {
                    return;
                }
                imageView.setImageDrawable(this.h0);
                imageView.setContentDescription(this.c1);
            }
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f17979b.D = z;
    }

    public void setMediaRouteButtonViewProvider(ViewProvider viewProvider) {
        final View viewFindViewById = findViewById(R.id.exo_media_route_button_placeholder);
        if (viewFindViewById == null) {
            md.k("The media route button placeholder is missing.");
            return;
        }
        if (viewProvider == null) {
            viewFindViewById.setVisibility(8);
            return;
        }
        final ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
        if (viewGroup == null) {
            md.k("The media route button placeholder has no parent view.");
            return;
        }
        ListenableFuture listenableFutureA = viewProvider.a();
        FutureCallback<View> futureCallback = new FutureCallback<View>() { // from class: androidx.media3.ui.PlayerControlView.1
            @Override // com.google.common.util.concurrent.FutureCallback
            public final void onFailure(Throwable th) {
                viewFindViewById.setVisibility(8);
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public final void onSuccess(Object obj) {
                View view = (View) obj;
                View view2 = viewFindViewById;
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams == null) {
                    md.k("The media route button placeholder missing layout params.");
                    return;
                }
                view.setId(R.id.exo_media_route_button_placeholder);
                view.setLayoutParams(layoutParams);
                ViewGroup viewGroup2 = viewGroup;
                int iIndexOfChild = viewGroup2.indexOfChild(view2);
                viewGroup2.removeView(view2);
                viewGroup2.addView(view, iIndexOfChild);
                view.setVisibility(0);
                PlayerControlView.this.f17979b.h(view, true);
            }
        };
        Handler handler = this.d;
        Objects.requireNonNull(handler);
        Futures.a(listenableFutureA, futureCallback, new dc(handler, 1));
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        this.t1 = onFullScreenModeChangedListener;
        boolean z = onFullScreenModeChangedListener != null;
        ImageView imageView = this.F;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        boolean z2 = onFullScreenModeChangedListener != null;
        ImageView imageView2 = this.G;
        if (imageView2 == null) {
            return;
        }
        if (z2) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
        }
    }

    public void setPlayer(Player player) {
        Preconditions.q(Looper.myLooper() == Looper.getMainLooper());
        Preconditions.g(player == null || player.a0() == Looper.getMainLooper());
        Player player2 = this.r1;
        if (player2 == player) {
            return;
        }
        ComponentListener componentListener = this.f17981e;
        if (player2 != null) {
            player2.V(componentListener);
        }
        this.r1 = player;
        if (player != null) {
            player.Y(componentListener);
        }
        m();
    }

    public void setProgressUpdateListener(ProgressUpdateListener progressUpdateListener) {
        this.s1 = progressUpdateListener;
    }

    public void setRepeatToggleModes(int i2) {
        this.D1 = i2;
        Player player = this.r1;
        if (player != null && player.R0(15)) {
            int i3 = this.r1.i();
            if (i2 == 0 && i3 != 0) {
                this.r1.E0(0);
            } else if (i2 == 1 && i3 == 2) {
                this.r1.E0(1);
            } else if (i2 == 2 && i3 == 1) {
                this.r1.E0(2);
            }
        }
        this.f17979b.h(this.B, i2 != 0);
        s();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f17979b.h(this.x, z);
        o();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        this.w1 = z;
        v();
    }

    public void setShowNextButton(boolean z) {
        this.f17979b.h(this.v, z);
        o();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        this.x1 = z;
        p();
    }

    public void setShowPreviousButton(boolean z) {
        this.f17979b.h(this.u, z);
        o();
    }

    public void setShowRewindButton(boolean z) {
        this.f17979b.h(this.y, z);
        o();
    }

    public void setShowShuffleButton(boolean z) {
        this.f17979b.h(this.C, z);
        u();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f17979b.h(this.E, z);
    }

    public void setShowTimeoutMs(int i2) {
        this.A1 = i2;
        if (j()) {
            this.f17979b.g();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f17979b.h(this.D, z);
    }

    public void setTimeBarMinUpdateInterval(int i2) {
        this.C1 = Util.j(i2, 16, 1000);
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        this.B1 = z;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.D;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            n(imageView, onClickListener != null);
        }
    }

    public final void t() {
        RecyclerView recyclerView = this.m;
        recyclerView.measure(0, 0);
        int width = getWidth();
        int i2 = this.t;
        int iMin = Math.min(recyclerView.getMeasuredWidth(), width - (i2 * 2));
        PopupWindow popupWindow = this.s;
        popupWindow.setWidth(iMin);
        popupWindow.setHeight(Math.min(getHeight() - (i2 * 2), recyclerView.getMeasuredHeight()));
    }

    public final void u() {
        ImageView imageView;
        if (l() && this.v1 && (imageView = this.C) != null) {
            Player player = this.r1;
            if (!this.f17979b.b(imageView)) {
                n(imageView, false);
                return;
            }
            String str = this.i1;
            Drawable drawable = this.e1;
            if (player == null || !player.R0(14)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            if (player.w()) {
                drawable = this.d1;
            }
            imageView.setImageDrawable(drawable);
            if (player.w()) {
                str = this.h1;
            }
            imageView.setContentDescription(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:75:0x0148  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f3 A[SYNTHETIC] */
    public final void v() {
        long jR;
        int i2;
        long j2;
        long[] jArr;
        AdPlaybackState.AdGroup adGroupA;
        int i3;
        int i4;
        Timeline timeline;
        boolean z;
        boolean z2;
        int i5;
        int i6;
        int length;
        Player player = this.r1;
        if (player == null) {
            return;
        }
        boolean z3 = this.w1;
        Timeline.Window window = this.Q;
        boolean z4 = false;
        boolean z5 = true;
        this.y1 = z3 && c(player, window);
        long j3 = 0;
        this.I1 = 0L;
        Timeline timelineP = player.R0(17) ? player.p() : Timeline.f13952a;
        long j4 = -9223372036854775807L;
        if (timelineP.p()) {
            if (player.R0(16)) {
                long jM0 = player.m0();
                if (jM0 != -9223372036854775807L) {
                    jR = Util.R(jM0);
                } else {
                    jR = 0;
                }
            } else {
                jR = 0;
            }
            i2 = 0;
        } else {
            int iV = player.v();
            boolean z6 = this.y1;
            int i7 = z6 ? 0 : iV;
            int iO = z6 ? timelineP.o() - 1 : iV;
            i2 = 0;
            long j5 = 0;
            while (i7 <= iO) {
                long j6 = j3;
                if (i7 == iV) {
                    this.I1 = Util.f0(j5);
                }
                timelineP.n(i7, window);
                if (window.m == j4) {
                    Preconditions.q(this.y1 ^ z5);
                    break;
                }
                int i8 = window.n;
                while (i8 <= window.o) {
                    Timeline.Period period = this.P;
                    timelineP.f(i8, period, z4);
                    long j7 = j4;
                    AdPlaybackState adPlaybackState = period.g;
                    int i9 = adPlaybackState.f13673e;
                    int i10 = adPlaybackState.f13671b;
                    while (i9 < i10) {
                        long jD = period.d(i9);
                        if (jD == Long.MIN_VALUE) {
                            long j8 = period.d;
                            if (j8 == j7) {
                                timeline = timelineP;
                                z = true;
                            } else {
                                jD = j8;
                                j2 = jD + period.f13962e;
                                if (j2 >= j6) {
                                    jArr = this.E1;
                                    if (i2 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.E1 = Arrays.copyOf(jArr, length);
                                        this.F1 = Arrays.copyOf(this.F1, length);
                                    }
                                    this.E1[i2] = Util.f0(j5 + j2);
                                    boolean[] zArr = this.F1;
                                    adGroupA = period.g.a(i9);
                                    i3 = adGroupA.f13676b;
                                    if (i3 != -1) {
                                        i4 = 0;
                                        while (true) {
                                            if (i4 < i3) {
                                                timeline = timelineP;
                                                z = true;
                                                z2 = false;
                                                break;
                                            }
                                            i5 = i4;
                                            i6 = adGroupA.f13679f[i5];
                                            timeline = timelineP;
                                            z = true;
                                            if (i6 != 0 || i6 == 1) {
                                                z2 = true;
                                                break;
                                            } else {
                                                i4 = i5 + 1;
                                                timelineP = timeline;
                                            }
                                        }
                                    } else {
                                        timeline = timelineP;
                                        z = true;
                                        z2 = true;
                                    }
                                    zArr[i2] = !z2;
                                    i2++;
                                } else {
                                    timeline = timelineP;
                                    z = true;
                                }
                            }
                        } else {
                            j2 = jD + period.f13962e;
                            if (j2 >= j6) {
                                jArr = this.E1;
                                if (i2 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.E1 = Arrays.copyOf(jArr, length);
                                    this.F1 = Arrays.copyOf(this.F1, length);
                                }
                                this.E1[i2] = Util.f0(j5 + j2);
                                boolean[] zArr2 = this.F1;
                                adGroupA = period.g.a(i9);
                                i3 = adGroupA.f13676b;
                                if (i3 != -1) {
                                    timeline = timelineP;
                                    z = true;
                                    z2 = true;
                                } else {
                                    i4 = 0;
                                    while (true) {
                                        if (i4 < i3) {
                                            timeline = timelineP;
                                            z = true;
                                            z2 = false;
                                            break;
                                        } else {
                                            i5 = i4;
                                            i6 = adGroupA.f13679f[i5];
                                            timeline = timelineP;
                                            z = true;
                                            if (i6 != 0) {
                                            }
                                            z2 = true;
                                            break;
                                        }
                                        i4 = i5 + 1;
                                        timelineP = timeline;
                                    }
                                }
                                zArr2[i2] = !z2;
                                i2++;
                            } else {
                                timeline = timelineP;
                                z = true;
                            }
                        }
                        i9++;
                        z5 = z;
                        iV = iV;
                        timelineP = timeline;
                        j6 = 0;
                    }
                    i8++;
                    j4 = j7;
                    timelineP = timelineP;
                    z4 = false;
                    j6 = 0;
                }
                j5 += window.m;
                i7++;
                z5 = z5;
                timelineP = timelineP;
                z4 = false;
                j3 = 0;
            }
            jR = j5;
        }
        long jF0 = Util.f0(jR);
        TextView textView = this.K;
        if (textView != null) {
            textView.setText(Util.E(this.N, this.O, jF0));
        }
        TimeBar timeBar = this.M;
        if (timeBar != null) {
            timeBar.setDuration(jF0);
            long[] jArr2 = this.G1;
            int length2 = jArr2.length;
            int i11 = i2 + length2;
            long[] jArr3 = this.E1;
            if (i11 > jArr3.length) {
                this.E1 = Arrays.copyOf(jArr3, i11);
                this.F1 = Arrays.copyOf(this.F1, i11);
            }
            System.arraycopy(jArr2, 0, this.E1, i2, length2);
            System.arraycopy(this.H1, 0, this.F1, i2, length2);
            timeBar.b(this.E1, this.F1, i11);
        }
        r();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w() {
        TextTrackSelectionAdapter textTrackSelectionAdapter = this.p;
        textTrackSelectionAdapter.getClass();
        List list = Collections.EMPTY_LIST;
        textTrackSelectionAdapter.f18006b = list;
        AudioTrackSelectionAdapter audioTrackSelectionAdapter = this.q;
        audioTrackSelectionAdapter.getClass();
        audioTrackSelectionAdapter.f18006b = list;
        Player player = this.r1;
        ImageView imageView = this.E;
        if (player != null && player.R0(30) && this.r1.R0(29)) {
            Tracks tracksN = this.r1.n();
            ImmutableList immutableListF = f(tracksN, 1);
            audioTrackSelectionAdapter.f18006b = immutableListF;
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player2 = playerControlView.r1;
            SettingsAdapter settingsAdapter = playerControlView.n;
            player2.getClass();
            TrackSelectionParameters trackSelectionParametersD0 = player2.d0();
            if (immutableListF.isEmpty()) {
                settingsAdapter.f17999c[1] = playerControlView.getResources().getString(R.string.exo_track_selection_none);
            } else if (audioTrackSelectionAdapter.e(trackSelectionParametersD0)) {
                for (int i2 = 0; i2 < immutableListF.size(); i2++) {
                    TrackInformation trackInformation = (TrackInformation) immutableListF.get(i2);
                    if (trackInformation.f18003a.f14019e[trackInformation.f18004b]) {
                        settingsAdapter.f17999c[1] = trackInformation.f18005c;
                        break;
                    }
                }
            } else {
                settingsAdapter.f17999c[1] = playerControlView.getResources().getString(R.string.exo_track_selection_auto);
            }
            if (this.f17979b.b(imageView)) {
                textTrackSelectionAdapter.e(f(tracksN, 3));
            } else {
                textTrackSelectionAdapter.e(ImmutableList.x());
            }
        }
        n(imageView, textTrackSelectionAdapter.getItemCount() > 0);
        SettingsAdapter settingsAdapter2 = this.n;
        n(this.H, settingsAdapter2.a(1) || settingsAdapter2.a(0));
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, attributeSet);
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }
}
