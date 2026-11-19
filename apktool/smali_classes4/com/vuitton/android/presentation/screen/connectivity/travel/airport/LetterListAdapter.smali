.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\t\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;",
        "onLetterTouchListener",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;)V",
        "LetterViewHolder",
        "OnLetterTouchListener",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;->b:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->e:Ljava/lang/Character;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne p2, v0, :cond_1

    const p2, 0x7f0600b5

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_1
    :goto_0
    const p2, 0x7f0600a5

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;Landroid/view/View;)V

    return-object p2
.end method
