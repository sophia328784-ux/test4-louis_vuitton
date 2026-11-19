.class public Lcom/sightcall/universal/internal/ui/TimeAgoTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field private static final HOUR_TO_MILLIS:J

.field private static final MINUTE_TO_MILLIS:J

.field private static final SECOND_TO_MILLIS:J


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private defaultText:Ljava/lang/String;

.field private isAttachedToWindow:Z

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->SECOND_TO_MILLIS:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->MINUTE_TO_MILLIS:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->HOUR_TO_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/ui/TimeAgoTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->renderTimestamp()V

    return-void
.end method

.method private renderTimestamp()V
    .locals 8

    iget-wide v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->timestamp:J

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x40000

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->defaultText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->startCountDown()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->stopCountDown()V

    return-void
.end method

.method public restartCountDown()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->stopCountDown()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->startCountDown()V

    return-void
.end method

.method public setDefaultText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->defaultText:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->timestamp:J

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->renderTimestamp()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->restartCountDown()V

    return-void
.end method

.method public startCountDown()V
    .locals 14

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->timestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-wide v2, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->MINUTE_TO_MILLIS:J

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "startCountDown() called with seconds"

    invoke-virtual {v0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-wide v0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->SECOND_TO_MILLIS:J

    move-wide v12, v0

    move-wide v10, v2

    goto :goto_0

    :cond_0
    sget-wide v6, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->HOUR_TO_MILLIS:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "startCountDown() called with minutes"

    invoke-virtual {v0, v1, v5}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v12, v2

    move-wide v10, v6

    :goto_0
    new-instance v8, Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView$1;-><init>(Lcom/sightcall/universal/internal/ui/TimeAgoTextView;JJ)V

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    iput-object p0, v9, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public stopCountDown()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
