.class Lcom/google/android/filament/android/DisplayHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic b:Landroid/view/Display;

.field public final synthetic c:Lcom/google/android/filament/android/DisplayHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/android/DisplayHelper;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper$1;->c:Lcom/google/android/filament/android/DisplayHelper;

    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper$1;->b:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper$1;->b:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper$1;->c:Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p0}, Lcom/google/android/filament/android/DisplayHelper;->c()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
