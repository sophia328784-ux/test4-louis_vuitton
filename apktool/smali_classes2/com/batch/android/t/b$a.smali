.class public abstract Lcom/batch/android/t/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/batch/android/t/b;)Z
.end method
