.class public final synthetic Lm90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;

.field public final synthetic c:C


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm90;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;

    iput-char p2, p0, Lm90;->c:C

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$LetterViewHolder;->c:I

    iget-char v0, p0, Lm90;->c:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iget-object p0, p0, Lm90;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->e:Ljava/lang/Character;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter$OnLetterTouchListener;->e(C)V

    return-void
.end method
