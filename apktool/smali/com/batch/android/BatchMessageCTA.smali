.class public Lcom/batch/android/BatchMessageCTA;
.super Lcom/batch/android/BatchMessageAction;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/batch/android/f0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessageAction;-><init>(Lcom/batch/android/f0/a;)V

    iget-object p1, p1, Lcom/batch/android/f0/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/batch/android/BatchMessageCTA;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchMessageCTA;->c:Ljava/lang/String;

    return-object p0
.end method
