.class public final Lcom/batch/android/n/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/r;

    invoke-direct {v0}, Lcom/batch/android/n/r;-><init>()V

    sput-object v0, Lcom/batch/android/n/r;->a:Lcom/batch/android/n/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)Lcom/batch/android/n0/c;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/batch/android/n0/c;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)Lcom/batch/android/n0/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
