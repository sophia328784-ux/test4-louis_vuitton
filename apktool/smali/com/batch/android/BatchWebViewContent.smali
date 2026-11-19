.class public Lcom/batch/android/BatchWebViewContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInAppMessage$Content;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/batch/android/h0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/batch/android/h0/h;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/batch/android/BatchWebViewContent;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchWebViewContent;->a:Ljava/lang/String;

    return-object p0
.end method
