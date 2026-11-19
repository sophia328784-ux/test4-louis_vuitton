.class Lcom/google/android/material/bottomappbar/BottomAppBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    sget p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->v1:I

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n1:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b1:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    sget p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v1:I

    return-void
.end method
