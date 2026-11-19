.class public Lcom/batch/android/f0/b;
.super Lcom/batch/android/f0/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/batch/android/f0/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    iput-object p1, p0, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    return-void
.end method
