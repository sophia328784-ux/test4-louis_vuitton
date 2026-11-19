.class public Lcom/android/wiimu/model/pda/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/model/pda/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/wiimu/model/pda/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/pda/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/android/wiimu/model/pda/c$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/wiimu/model/pda/c;->c:Lcom/android/wiimu/model/pda/c$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/wiimu/model/pda/c;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/pda/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/wiimu/model/pda/c;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/android/wiimu/model/pda/c$a;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/pda/c;->c:Lcom/android/wiimu/model/pda/c$a;

    return-object p0
.end method
