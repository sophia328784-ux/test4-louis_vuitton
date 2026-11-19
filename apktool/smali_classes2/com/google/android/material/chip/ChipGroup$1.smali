.class Lcom/google/android/material/chip/ChipGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$1;->a:Lcom/google/android/material/chip/ChipGroup;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$1;->a:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup;->i:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v1, p0}, Lcom/google/android/material/internal/CheckableGroup;->c(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;->a(Lcom/google/android/material/chip/ChipGroup;)V

    :cond_0
    return-void
.end method
