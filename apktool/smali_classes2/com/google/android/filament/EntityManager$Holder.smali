.class abstract Lcom/google/android/filament/EntityManager$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final a:Lcom/google/android/filament/EntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/filament/EntityManager;

    invoke-direct {v0}, Lcom/google/android/filament/EntityManager;-><init>()V

    sput-object v0, Lcom/google/android/filament/EntityManager$Holder;->a:Lcom/google/android/filament/EntityManager;

    return-void
.end method
