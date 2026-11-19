.class public Lcom/sightcall/universal/model/Validator$RegexValidator;
.super Lcom/sightcall/universal/model/Validator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/model/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexValidator"
.end annotation


# instance fields
.field private final regex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/model/Validator;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/model/Validator$RegexValidator;->regex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Validator$RegexValidator;->regex:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public regex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Validator$RegexValidator;->regex:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegexValidator{regex=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/model/Validator$RegexValidator;->regex:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
