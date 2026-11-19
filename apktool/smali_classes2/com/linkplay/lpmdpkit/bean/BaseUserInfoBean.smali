.class public Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expires_in:J

.field private msg:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpires_in()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->expires_in:J

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->refresh_token:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->username:Ljava/lang/String;

    return-object p0
.end method

.method public setExpires_in(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->expires_in:J

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/BaseUserInfoBean;->username:Ljava/lang/String;

    return-void
.end method
