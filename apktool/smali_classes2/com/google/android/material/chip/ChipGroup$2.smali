.class Lcom/google/android/material/chip/ChipGroup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

.field public final synthetic b:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$2;->b:Lcom/google/android/material/chip/ChipGroup;

    iput-object p2, p0, Lcom/google/android/material/chip/ChipGroup$2;->a:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$2;->b:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p1, Lcom/google/android/material/chip/ChipGroup;->i:Lcom/google/android/material/internal/CheckableGroup;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableGroup;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup$2;->a:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    invoke-interface {p0}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->a()V

    return-void
.end method
