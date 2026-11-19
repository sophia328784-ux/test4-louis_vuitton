package com.sightcall.universal.internal.messaging;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.R;
import defpackage.tr;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class MessagesAdapter extends RecyclerView.Adapter<MessageViewHolder> {
    private final List<Message> messages = new ArrayList();
    private OnMessageClickListener onMessageClickListener;
    private OnMessageLongClickListener onMessageLongClickListener;

    public static class MessageViewHolder extends RecyclerView.ViewHolder {
        static final int LAYOUT = R.layout.universal_item_message;
        private final int defaultTextColor;
        protected final TextView displayName;
        protected Message message;
        private final View.OnClickListener onClickListener;
        private final View.OnLongClickListener onLongClickListener;
        private OnMessageClickListener onMessageClickListener;
        private OnMessageLongClickListener onMessageLongClickListener;
        protected final LinearLayout root;
        protected final TextView text;
        protected final TextView time;

        public MessageViewHolder(View view) {
            super(view);
            this.onClickListener = new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesAdapter.MessageViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback.n(view2);
                    try {
                        MessageViewHolder messageViewHolder = MessageViewHolder.this;
                        if (messageViewHolder.message != null && messageViewHolder.onMessageClickListener != null && MessageViewHolder.this.getAdapterPosition() != -1 && MessageViewHolder.this.text.getSelectionStart() == -1 && MessageViewHolder.this.text.getSelectionEnd() == -1) {
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
            this.onLongClickListener = new View.OnLongClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesAdapter.MessageViewHolder.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    MessageViewHolder messageViewHolder = MessageViewHolder.this;
                    if (messageViewHolder.message == null || messageViewHolder.onMessageLongClickListener == null || MessageViewHolder.this.getAdapterPosition() == -1 || MessageViewHolder.this.text.getSelectionStart() != -1 || MessageViewHolder.this.text.getSelectionEnd() != -1) {
                        return false;
                    }
                    OnMessageLongClickListener onMessageLongClickListener = MessageViewHolder.this.onMessageLongClickListener;
                    MessageViewHolder messageViewHolder2 = MessageViewHolder.this;
                    return onMessageLongClickListener.onMessageLongClick(messageViewHolder2.message, messageViewHolder2);
                }
            };
            this.root = (LinearLayout) view.findViewById(R.id.message_box);
            this.displayName = (TextView) view.findViewById(R.id.universal_name);
            TextView textView = (TextView) view.findViewById(R.id.universal_textview);
            this.text = textView;
            this.time = (TextView) view.findViewById(R.id.universal_time);
            this.defaultTextColor = textView.getCurrentTextColor();
        }

        private String formatDate(long j2) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j2);
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            return simpleDateFormat.format(calendar.getTime());
        }

        public void onBind(Message message, OnMessageClickListener onMessageClickListener, OnMessageLongClickListener onMessageLongClickListener) {
            String str;
            this.message = message;
            this.text.setText(message.content());
            if (onMessageClickListener != null) {
                this.text.setOnClickListener(this.onClickListener);
                this.onMessageClickListener = onMessageClickListener;
            }
            if (onMessageLongClickListener != null) {
                this.text.setOnLongClickListener(this.onLongClickListener);
                this.onMessageLongClickListener = onMessageLongClickListener;
            }
            this.time.setText(formatDate(message.timestamp));
            this.text.setTextColor(Color.parseColor("#171717"));
            if (message.role.length() > 0) {
                str = message.role.substring(0, 1).toUpperCase() + message.role.substring(1);
            } else {
                str = "";
            }
            if (!(message instanceof Message.Incoming)) {
                if (message instanceof Message.Outgoing) {
                    this.text.setGravity(8388613);
                    this.root.setBackgroundColor(Color.parseColor("#e5f2ff"));
                    return;
                }
                return;
            }
            if (message.role.equals("guest") || message.role.equals("host")) {
                this.displayName.setText(tr.l(new StringBuilder(), message.uid, " (", str, ")"));
            } else {
                String str2 = message.role;
                if (str2 == null || str2.equals("null")) {
                    this.displayName.setText(str);
                } else {
                    this.displayName.setText(message.uid);
                }
            }
            this.text.setGravity(8388611);
            this.root.setBackgroundColor(Color.parseColor("#d9d9d9"));
        }

        public void onUnbind() {
            if (this.onMessageClickListener != null) {
                this.text.setOnClickListener(null);
                this.onMessageClickListener = null;
            }
            if (this.onMessageLongClickListener != null) {
                this.text.setOnLongClickListener(null);
                this.onMessageLongClickListener = null;
            }
            this.text.setText((CharSequence) null);
            this.message = null;
        }
    }

    public interface OnMessageClickListener {
        void onMessageClick(Message message, MessageViewHolder messageViewHolder);
    }

    public interface OnMessageLongClickListener {
        boolean onMessageLongClick(Message message, MessageViewHolder messageViewHolder);
    }

    private Message getItem(int i2) {
        return this.messages.get(i2);
    }

    public void addMessage(Message message) {
        this.messages.add(message);
        notifyItemInserted(this.messages.size() - 1);
    }

    public void addMessages(List<Message> list) {
        if (list.isEmpty()) {
            return;
        }
        int size = this.messages.size();
        this.messages.addAll(list);
        notifyItemRangeInserted(size, list.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.messages.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        if (getItem(i2) != null) {
            return MessageViewHolder.LAYOUT;
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MessageViewHolder messageViewHolder, int i2) {
        messageViewHolder.onBind(this.messages.get(i2), this.onMessageClickListener, this.onMessageLongClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MessageViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
        if (i2 == MessageViewHolder.LAYOUT) {
            return new MessageViewHolder(viewInflate);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(MessageViewHolder messageViewHolder) {
        super.onViewRecycled(messageViewHolder);
        messageViewHolder.onUnbind();
    }

    public void setOnMessageClickListener(OnMessageClickListener onMessageClickListener) {
        this.onMessageClickListener = onMessageClickListener;
    }

    public void setOnMessageLongClickListener(OnMessageLongClickListener onMessageLongClickListener) {
        this.onMessageLongClickListener = onMessageLongClickListener;
    }
}
