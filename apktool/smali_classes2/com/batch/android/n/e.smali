.class public final Lcom/batch/android/n/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/e;

    invoke-direct {v0}, Lcom/batch/android/n/e;-><init>()V

    sput-object v0, Lcom/batch/android/n/e;->a:Lcom/batch/android/n/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;Lcom/batch/android/i;Z)Lcom/batch/android/m0/b;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/batch/android/m0/b;->r:Lcom/batch/android/m0/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/batch/android/m0/b$a;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;Lcom/batch/android/i;Z)Lcom/batch/android/m0/b;

    move-result-object p0

    return-object p0
.end method
