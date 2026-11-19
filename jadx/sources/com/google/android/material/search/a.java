package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import com.google.android.material.animation.AnimatableView;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f32912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewAnimationHelper f32913c;

    public /* synthetic */ a(SearchViewAnimationHelper searchViewAnimationHelper, int i2) {
        this.f32912b = i2;
        this.f32913c = searchViewAnimationHelper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f32912b;
        SearchViewAnimationHelper searchViewAnimationHelper = this.f32913c;
        switch (i2) {
            case 0:
                searchViewAnimationHelper.l();
                break;
            case 1:
                AnimatorSet animatorSetD = searchViewAnimationHelper.d(true);
                animatorSetD.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchViewAnimationHelper.1
                    public AnonymousClass1() {
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        SearchViewAnimationHelper searchViewAnimationHelper2 = SearchViewAnimationHelper.this;
                        SearchView searchView = searchViewAnimationHelper2.f32897a;
                        SearchView searchView2 = searchViewAnimationHelper2.f32897a;
                        if (!searchView.h()) {
                            searchView2.j();
                        }
                        searchView2.setTransitionState(SearchView.TransitionState.SHOWN);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        SearchViewAnimationHelper searchViewAnimationHelper2 = SearchViewAnimationHelper.this;
                        searchViewAnimationHelper2.f32899c.setVisibility(0);
                        SearchBar searchBar = searchViewAnimationHelper2.p;
                        searchBar.g1.getClass();
                        View centerView = searchBar.getCenterView();
                        if (centerView instanceof AnimatableView) {
                            ((AnimatableView) centerView).a();
                        }
                        if (centerView != 0) {
                            centerView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        }
                    }
                });
                animatorSetD.start();
                break;
            default:
                ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchViewAnimationHelper.f32899c;
                clippableRoundedCornerLayout.setTranslationY(clippableRoundedCornerLayout.getHeight());
                AnimatorSet animatorSetG = searchViewAnimationHelper.g(true);
                animatorSetG.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchViewAnimationHelper.3
                    public AnonymousClass3() {
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        SearchViewAnimationHelper searchViewAnimationHelper2 = SearchViewAnimationHelper.this;
                        SearchView searchView = searchViewAnimationHelper2.f32897a;
                        SearchView searchView2 = searchViewAnimationHelper2.f32897a;
                        if (!searchView.h()) {
                            searchView2.j();
                        }
                        searchView2.setTransitionState(SearchView.TransitionState.SHOWN);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        SearchViewAnimationHelper searchViewAnimationHelper2 = SearchViewAnimationHelper.this;
                        searchViewAnimationHelper2.f32899c.setVisibility(0);
                        searchViewAnimationHelper2.f32897a.setTransitionState(SearchView.TransitionState.SHOWING);
                    }
                });
                animatorSetG.start();
                break;
        }
    }
}
