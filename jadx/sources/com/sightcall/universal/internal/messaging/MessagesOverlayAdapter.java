package com.sightcall.universal.internal.messaging;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.model.Session;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class MessagesOverlayAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final Comparator<? super Message.Incoming> MESSAGE_COMPARATOR = new Comparator<Message.Incoming>() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.1
        @Override // java.util.Comparator
        public int compare(Message.Incoming incoming, Message.Incoming incoming2) {
            long jTimestamp = incoming.timestamp();
            long jTimestamp2 = incoming2.timestamp();
            if (jTimestamp < jTimestamp2) {
                return -1;
            }
            return jTimestamp == jTimestamp2 ? 0 : 1;
        }
    };
    private OnMessageClickListener onMessageClickListener;
    private OnMessageLongClickListener onMessageLongClickListener;
    private OnQuickActionListener onQuickActionListener;
    private final boolean showQuickActions;
    private final long unreadMessagesTimeoutMillis;
    private final List<Message.Incoming> unreadMessages = new ArrayList();
    private final Handler uiHandler = new Handler(Looper.getMainLooper());
    private final Runnable clearIncomingMessages = new Runnable() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.2
        @Override // java.lang.Runnable
        public void run() {
            MessagesOverlayAdapter.this.onMessagesRead();
        }
    };

    public static class MessageViewHolder extends RecyclerView.ViewHolder {
        private static final int ID = R.layout.universal_item_message_overlay;
        protected Message.Incoming message;
        private final View.OnClickListener onClickListener;
        private final View.OnLongClickListener onLongClickListener;
        private OnMessageClickListener onMessageClickListener;
        private OnMessageLongClickListener onMessageLongClickListener;
        TextView textView;

        public MessageViewHolder(View view) {
            super(view);
            this.onClickListener = new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.MessageViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback.n(view2);
                    try {
                        MessageViewHolder messageViewHolder = MessageViewHolder.this;
                        if (messageViewHolder.message != null && messageViewHolder.onMessageClickListener != null && MessageViewHolder.this.getAdapterPosition() != -1 && MessageViewHolder.this.textView.getSelectionStart() == -1 && MessageViewHolder.this.textView.getSelectionEnd() == -1) {
                            OnMessageClickListener onMessageClickListener = MessageViewHolder.this.onMessageClickListener;
                            MessageViewHolder messageViewHolder2 = MessageViewHolder.this;
                            onMessageClickListener.onMessageClick(messageViewHolder2.message, messageViewHolder2);
                        }
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                    }
                }
            };
            this.onLongClickListener = new View.OnLongClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.MessageViewHolder.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    MessageViewHolder messageViewHolder = MessageViewHolder.this;
                    if (messageViewHolder.message == null || messageViewHolder.onMessageLongClickListener == null || MessageViewHolder.this.getAdapterPosition() == -1 || MessageViewHolder.this.textView.getSelectionStart() != -1 || MessageViewHolder.this.textView.getSelectionEnd() != -1) {
                        return false;
                    }
                    OnMessageLongClickListener onMessageLongClickListener = MessageViewHolder.this.onMessageLongClickListener;
                    MessageViewHolder messageViewHolder2 = MessageViewHolder.this;
                    return onMessageLongClickListener.onMessageLongClick(messageViewHolder2.message, messageViewHolder2);
                }
            };
            this.textView = (TextView) view.findViewById(android.R.id.text1);
        }

        public void onBind(Message.Incoming incoming, OnMessageClickListener onMessageClickListener, OnMessageLongClickListener onMessageLongClickListener) {
            this.message = incoming;
            this.textView.setText(incoming.content());
            if (onMessageClickListener != null) {
                this.textView.setOnClickListener(this.onClickListener);
                this.onMessageClickListener = onMessageClickListener;
            }
            if (onMessageLongClickListener != null) {
                this.textView.setOnLongClickListener(this.onLongClickListener);
                this.onMessageLongClickListener = onMessageLongClickListener;
            }
        }

        public void onUnbind() {
            if (this.onMessageClickListener != null) {
                this.textView.setOnClickListener(null);
                this.onMessageClickListener = null;
            }
            if (this.onMessageLongClickListener != null) {
                this.textView.setOnLongClickListener(null);
                this.onMessageLongClickListener = null;
            }
            this.textView.setText((CharSequence) null);
            this.message = null;
        }
    }

    public interface OnMessageClickListener {
        void onMessageClick(Message.Incoming incoming, MessageViewHolder messageViewHolder);
    }

    public interface OnMessageLongClickListener {
        boolean onMessageLongClick(Message.Incoming incoming, MessageViewHolder messageViewHolder);
    }

    public interface OnQuickActionListener {
        void onQuickActionNegative();

        void onQuickActionPositive();

        void onQuickActionReply();
    }

    public static class QuickActionsViewHolder extends RecyclerView.ViewHolder {
        private static final int ID = R.layout.universal_item_message_overlay_quick_actions;
        private final View ko;
        private final View ok;
        private OnQuickActionListener onQuickActionListener;
        private final View.OnClickListener onQuickActionNegative;
        private final View.OnClickListener onQuickActionPositive;
        private final View.OnClickListener onQuickActionReply;
        private final View reply;
        private final View view;

        public QuickActionsViewHolder(View view) {
            super(view);
            this.onQuickActionNegative = new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.QuickActionsViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback.n(view2);
                    try {
                        if (QuickActionsViewHolder.this.onQuickActionListener != null) {
                            QuickActionsViewHolder.this.onQuickActionListener.onQuickActionNegative();
                        }
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                    }
                }
            };
            this.onQuickActionPositive = new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.QuickActionsViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback.n(view2);
                    try {
                        if (QuickActionsViewHolder.this.onQuickActionListener != null) {
                            QuickActionsViewHolder.this.onQuickActionListener.onQuickActionPositive();
                        }
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                    }
                }
            };
            this.onQuickActionReply = new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.QuickActionsViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback.n(view2);
                    try {
                        if (QuickActionsViewHolder.this.onQuickActionListener != null) {
                            QuickActionsViewHolder.this.onQuickActionListener.onQuickActionReply();
                        }
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                    }
                }
            };
            this.view = view;
            this.ok = view.findViewById(R.id.universal_messages_quick_action_positive);
            this.ko = view.findViewById(R.id.universal_messages_quick_action_negative);
            this.reply = view.findViewById(R.id.universal_messages_quick_action_reply);
        }

        public void onBind(boolean z, OnQuickActionListener onQuickActionListener) {
            if (onQuickActionListener != null) {
                this.ok.setOnClickListener(this.onQuickActionPositive);
                this.ko.setOnClickListener(this.onQuickActionNegative);
                this.reply.setOnClickListener(this.onQuickActionReply);
                this.onQuickActionListener = onQuickActionListener;
            }
            this.view.setVisibility(z ? 0 : 8);
        }

        public void onUnbind() {
            if (this.onQuickActionListener != null) {
                this.ok.setOnClickListener(null);
                this.ko.setOnClickListener(null);
                this.reply.setOnClickListener(null);
                this.onQuickActionListener = null;
            }
        }
    }

    public MessagesOverlayAdapter(Session session) {
        Usecase.User user = session.usecase.user(session.config);
        Usecase.Chat chat = user != null ? user.chat() : null;
        if (chat != null) {
            this.showQuickActions = chat.quickbar();
            this.unreadMessagesTimeoutMillis = TimeUnit.SECONDS.toMillis(chat.messageOverlayTimeout());
        } else {
            this.showQuickActions = false;
            this.unreadMessagesTimeoutMillis = 0L;
        }
    }

    private Message.Incoming getUnreadMessageAt(int i2) {
        if (isItemUnreadMessage(i2)) {
            return this.unreadMessages.get(i2);
        }
        return null;
    }

    private int indexOfQuickActions() {
        return this.unreadMessages.size() + indexOfUnreadMessages();
    }

    private int indexOfUnreadMessages() {
        return 0;
    }

    private boolean isItemQuickActions(int i2) {
        return shouldShowQuickActions() && i2 == indexOfQuickActions();
    }

    private boolean isItemUnreadMessage(int i2) {
        return i2 < this.unreadMessages.size();
    }

    private void notifyQuickActionsChanged(boolean z) {
        if (!z && shouldShowQuickActions()) {
            notifyItemInserted(indexOfQuickActions());
            return;
        }
        if (z && !shouldShowQuickActions()) {
            notifyItemRemoved(indexOfQuickActions());
        } else if (z != shouldShowQuickActions()) {
            notifyItemChanged(indexOfQuickActions());
        }
    }

    private boolean shouldShowQuickActions() {
        return this.showQuickActions && !this.unreadMessages.isEmpty();
    }

    public void clearUnreadTimeout() {
        this.uiHandler.removeCallbacks(this.clearIncomingMessages);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.unreadMessages.size() + (shouldShowQuickActions() ? 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        if (isItemUnreadMessage(i2)) {
            return MessageViewHolder.ID;
        }
        if (isItemQuickActions(i2)) {
            return QuickActionsViewHolder.ID;
        }
        r81.b();
        return 0;
    }

    public boolean isEmpty() {
        return this.unreadMessages.isEmpty();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof MessageViewHolder) {
            ((MessageViewHolder) viewHolder).onBind(getUnreadMessageAt(i2), this.onMessageClickListener, this.onMessageLongClickListener);
        } else if (viewHolder instanceof QuickActionsViewHolder) {
            ((QuickActionsViewHolder) viewHolder).onBind(shouldShowQuickActions(), this.onQuickActionListener);
        } else {
            r81.b();
        }
    }

    public void onClear() {
        this.unreadMessages.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
        if (i2 == MessageViewHolder.ID) {
            return new MessageViewHolder(viewInflate);
        }
        if (i2 == QuickActionsViewHolder.ID) {
            return new QuickActionsViewHolder(viewInflate);
        }
        return null;
    }

    public void onMessageAdded(Message.Incoming incoming) {
        boolean zShouldShowQuickActions = shouldShowQuickActions();
        this.unreadMessages.add(incoming);
        Collections.sort(this.unreadMessages, MESSAGE_COMPARATOR);
        notifyItemInserted(this.unreadMessages.indexOf(incoming) + indexOfUnreadMessages());
        notifyQuickActionsChanged(zShouldShowQuickActions);
        resetUnreadTimeout();
    }

    public void onMessageDismissed(MessageViewHolder messageViewHolder) {
        int adapterPosition = messageViewHolder.getAdapterPosition();
        Message.Incoming incoming = messageViewHolder.message;
        if (adapterPosition == -1 || incoming == null) {
            notifyDataSetChanged();
            return;
        }
        incoming.read(true);
        boolean zShouldShowQuickActions = shouldShowQuickActions();
        if (!isItemUnreadMessage(adapterPosition) || !this.unreadMessages.contains(incoming)) {
            notifyDataSetChanged();
            return;
        }
        this.unreadMessages.remove(incoming);
        notifyItemRemoved(adapterPosition);
        notifyQuickActionsChanged(zShouldShowQuickActions);
    }

    public void onMessagesRead() {
        if (this.unreadMessages.isEmpty()) {
            return;
        }
        boolean zShouldShowQuickActions = shouldShowQuickActions();
        int iIndexOfUnreadMessages = indexOfUnreadMessages();
        int size = this.unreadMessages.size();
        Iterator<Message.Incoming> it = this.unreadMessages.iterator();
        while (it.hasNext()) {
            it.next().read(true);
        }
        this.unreadMessages.clear();
        notifyItemRangeRemoved(iIndexOfUnreadMessages, size);
        notifyQuickActionsChanged(zShouldShowQuickActions);
        clearUnreadTimeout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
        if (viewHolder instanceof MessageViewHolder) {
            ((MessageViewHolder) viewHolder).onUnbind();
        } else if (viewHolder instanceof QuickActionsViewHolder) {
            ((QuickActionsViewHolder) viewHolder).onUnbind();
        }
    }

    public void refresh(List<Message> list) {
        this.unreadMessages.clear();
        if (list.isEmpty()) {
            notifyDataSetChanged();
            return;
        }
        for (Message message : list) {
            if (message instanceof Message.Incoming) {
                Message.Incoming incoming = (Message.Incoming) message;
                if (!incoming.isRead()) {
                    this.unreadMessages.add(incoming);
                }
            }
        }
        Collections.sort(this.unreadMessages, MESSAGE_COMPARATOR);
        notifyDataSetChanged();
        resetUnreadTimeout();
    }

    public void resetUnreadTimeout() {
        clearUnreadTimeout();
        if (this.unreadMessages.isEmpty()) {
            return;
        }
        long j2 = this.unreadMessagesTimeoutMillis;
        if (j2 > 0) {
            this.uiHandler.postDelayed(this.clearIncomingMessages, j2);
        }
    }

    public void setOnMessageClickListener(OnMessageClickListener onMessageClickListener) {
        this.onMessageClickListener = onMessageClickListener;
    }

    public void setOnMessageLongClickListener(OnMessageLongClickListener onMessageLongClickListener) {
        this.onMessageLongClickListener = onMessageLongClickListener;
    }

    public void setOnQuickActionListener(OnQuickActionListener onQuickActionListener) {
        this.onQuickActionListener = onQuickActionListener;
    }
}
