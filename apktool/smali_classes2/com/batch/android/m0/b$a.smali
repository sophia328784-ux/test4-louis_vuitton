.class public final Lcom/batch/android/m0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/m0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/m0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;Lcom/batch/android/i;Z)Lcom/batch/android/m0/b;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/batch/android/m0/b;

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/batch/android/m0/b;-><init>(Landroid/view/View;Lcom/batch/android/g0/a;Lcom/batch/android/i;Lcom/batch/android/BatchMessage;ZLcom/batch/android/v0/g;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
