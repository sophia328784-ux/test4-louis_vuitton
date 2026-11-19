package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import defpackage.l90;
import java.util.ArrayList;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\t\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;", "onLetterTouchListener", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;)V", "LetterViewHolder", "OnLetterTouchListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LetterListAdapter extends RecyclerView.Adapter<LetterViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f56387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnLetterTouchListener f56388c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Character f56389e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;Landroid/view/View;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class LetterViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f56390c = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f56391b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LetterViewHolder(LetterListAdapter letterListAdapter, View view) {
            super(view);
            view.getClass();
            TextView textView = (TextView) view;
            this.f56391b = textView;
            textView.setOnTouchListener(new l90(this, letterListAdapter, 0));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnLetterTouchListener {
        void e(char c2);
    }

    public LetterListAdapter(Context context, OnLetterTouchListener onLetterTouchListener) {
        context.getClass();
        onLetterTouchListener.getClass();
        this.f56387b = context;
        this.f56388c = onLetterTouchListener;
        this.d = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        LetterViewHolder letterViewHolder = (LetterViewHolder) viewHolder;
        letterViewHolder.getClass();
        Object obj = this.d.get(i2);
        obj.getClass();
        char cCharValue = ((Character) obj).charValue();
        TextView textView = letterViewHolder.f56391b;
        textView.setText(String.valueOf(cCharValue));
        Character ch = this.f56389e;
        Context context = this.f56387b;
        if (ch != null && cCharValue == ch.charValue()) {
            textView.setTextColor(ContextCompat.getColor(context, R.color.light_brown));
        } else {
            textView.setTextColor(ContextCompat.getColor(context, R.color.gray));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(this.f56387b).inflate(R.layout.item_letter, viewGroup, false);
        viewInflate.getClass();
        return new LetterViewHolder(this, viewInflate);
    }
}
