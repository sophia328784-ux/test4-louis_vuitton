.class public final Lcom/batch/android/n/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/s;

    invoke-direct {v0}, Lcom/batch/android/n/s;-><init>()V

    sput-object v0, Lcom/batch/android/n/s;->a:Lcom/batch/android/n/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)Lcom/batch/android/i;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/c;Lcom/batch/android/BatchMessage;)Lcom/batch/android/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
