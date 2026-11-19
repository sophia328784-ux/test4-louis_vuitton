.class public Lcom/sightcall/universal/util/Truss;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/Truss$Span;
    }
.end annotation


# instance fields
.field private final builder:Landroid/text/SpannableStringBuilder;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sightcall/universal/util/Truss$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/util/Truss;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public append(C)Lcom/sightcall/universal/util/Truss;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(I)Lcom/sightcall/universal/util/Truss;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/sightcall/universal/util/Truss;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public build()Ljava/lang/CharSequence;
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Truss;->popSpan()Lcom/sightcall/universal/util/Truss;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public popSpan()Lcom/sightcall/universal/util/Truss;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/util/Truss$Span;

    iget-object v1, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/sightcall/universal/util/Truss$Span;->span:Ljava/lang/Object;

    iget v0, v0, Lcom/sightcall/universal/util/Truss$Span;->start:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public pushSpan(Ljava/lang/Object;)Lcom/sightcall/universal/util/Truss;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/util/Truss;->stack:Ljava/util/Deque;

    new-instance v1, Lcom/sightcall/universal/util/Truss$Span;

    iget-object v2, p0, Lcom/sightcall/universal/util/Truss;->builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/sightcall/universal/util/Truss$Span;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method
