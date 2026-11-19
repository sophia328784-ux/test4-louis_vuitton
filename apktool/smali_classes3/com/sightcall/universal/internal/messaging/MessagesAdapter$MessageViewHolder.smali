.class Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageViewHolder"
.end annotation


# static fields
.field static final LAYOUT:I


# instance fields
.field private final defaultTextColor:I

.field protected final displayName:Landroid/widget/TextView;

.field protected message:Lcom/sightcall/universal/internal/messaging/Message;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

.field private onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

.field protected final root:Landroid/widget/LinearLayout;

.field protected final text:Landroid/widget/TextView;

.field protected final time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sightcall/universal/R$layout;->universal_item_message:I

    sput v0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder$1;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder$2;-><init>(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    sget v0, Lcom/sightcall/universal/R$id;->message_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->root:Landroid/widget/LinearLayout;

    sget v0, Lcom/sightcall/universal/R$id;->universal_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    sget v0, Lcom/sightcall/universal/R$id;->universal_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$id;->universal_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->defaultTextColor:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;)Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    return-object p0
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/internal/messaging/Message;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p3, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    :cond_1
    iget-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->time:Landroid/widget/TextView;

    iget-wide v0, p1, Lcom/sightcall/universal/internal/messaging/Message;->timestamp:J

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->formatDate(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    const-string p3, "#171717"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    instance-of p3, p1, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    if-eqz p3, :cond_7

    iget-object p3, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    const-string v0, "guest"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    const-string v0, "host"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p1, Lcom/sightcall/universal/internal/messaging/Message;->role:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sightcall/universal/internal/messaging/Message;->uid:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->displayName:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/sightcall/universal/internal/messaging/Message;->uid:Ljava/lang/String;

    const-string v1, " ("

    const-string v2, ")"

    invoke-static {v0, p1, v1, p2, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->root:Landroid/widget/LinearLayout;

    const-string p1, "#d9d9d9"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_7
    instance-of p1, p1, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    const p2, 0x800005

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->root:Landroid/widget/LinearLayout;

    const-string p1, "#e5f2ff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    return-void
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageClickListener;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->onMessageLongClickListener:Lcom/sightcall/universal/internal/messaging/MessagesAdapter$OnMessageLongClickListener;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/messaging/MessagesAdapter$MessageViewHolder;->message:Lcom/sightcall/universal/internal/messaging/Message;

    return-void
.end method
