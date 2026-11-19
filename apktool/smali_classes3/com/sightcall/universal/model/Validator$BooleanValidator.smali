.class public Lcom/sightcall/universal/model/Validator$BooleanValidator;
.super Lcom/sightcall/universal/model/Validator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/model/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/model/Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Ljava/lang/Boolean;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "BooleanValidator{}"

    return-object p0
.end method
