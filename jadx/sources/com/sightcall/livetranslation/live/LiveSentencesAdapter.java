package com.sightcall.livetranslation.live;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.sightcall.livetranslation.R;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0011H\u0016R0\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/sightcall/livetranslation/live/LiveSentencesAdapter$SentenceHolder;", "<init>", "()V", "value", "", "Lcom/sightcall/livetranslation/live/LiveSentencesAdapter$Item;", "items", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "getItemCount", "SentenceHolder", "Item", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveSentencesAdapter extends RecyclerView.Adapter<SentenceHolder> {
    private List<Item> items = EmptyList.f71768b;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesAdapter$Item;", "", "text", "", "color", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "<init>", "(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V", "getText", "()Ljava/lang/String;", "getColor", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Item {
        private final LiveTranslationSettings.Enabled.Color color;
        private final LiveTranslationSettings.Enabled.FontSize fontSize;
        private final String text;

        public Item(String str, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize) {
            str.getClass();
            color.getClass();
            fontSize.getClass();
            this.text = str;
            this.color = color;
            this.fontSize = fontSize;
        }

        public static /* synthetic */ Item copy$default(Item item, String str, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = item.text;
            }
            if ((i2 & 2) != 0) {
                color = item.color;
            }
            if ((i2 & 4) != 0) {
                fontSize = item.fontSize;
            }
            return item.copy(str, color, fontSize);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LiveTranslationSettings.Enabled.Color getColor() {
            return this.color;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final Item copy(String text, LiveTranslationSettings.Enabled.Color color, LiveTranslationSettings.Enabled.FontSize fontSize) {
            text.getClass();
            color.getClass();
            fontSize.getClass();
            return new Item(text, color, fontSize);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Item)) {
                return false;
            }
            Item item = (Item) other;
            return Intrinsics.c(this.text, item.text) && Intrinsics.c(this.color, item.color) && this.fontSize == item.fontSize;
        }

        public final LiveTranslationSettings.Enabled.Color getColor() {
            return this.color;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final String getText() {
            return this.text;
        }

        public int hashCode() {
            return this.fontSize.hashCode() + ((this.color.hashCode() + (this.text.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "Item(text=" + this.text + ", color=" + this.color + ", fontSize=" + this.fontSize + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesAdapter$SentenceHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "v", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "textView", "Landroid/widget/TextView;", "bind", "", "item", "Lcom/sightcall/livetranslation/live/LiveSentencesAdapter$Item;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SentenceHolder extends RecyclerView.ViewHolder {
        private final TextView textView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SentenceHolder(View view) {
            super(view);
            view.getClass();
            View viewFindViewById = view.findViewById(R.id.sentence);
            viewFindViewById.getClass();
            this.textView = (TextView) viewFindViewById;
        }

        public final void bind(Item item) {
            item.getClass();
            TextView textView = this.textView;
            textView.setText(item.getText());
            textView.setTextColor(item.getColor().getValue());
            textView.setTextSize(item.getFontSize().getValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    public final List<Item> getItems() {
        return this.items;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SentenceHolder holder, int position) {
        holder.getClass();
        holder.bind(this.items.get(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SentenceHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        parent.getClass();
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.sentence_item, parent, false);
        viewInflate.getClass();
        return new SentenceHolder(viewInflate);
    }

    public final void setItems(List<Item> list) {
        list.getClass();
        this.items = list;
        notifyDataSetChanged();
    }
}
