.class public final Lcom/batch/android/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/b;

    invoke-direct {v0}, Lcom/batch/android/n/b;-><init>()V

    sput-object v0, Lcom/batch/android/n/b;->a:Lcom/batch/android/n/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/a;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/batch/android/u/a;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
