<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:78a38f05-7227-4625-98bd-0d74fd435f99(MoveNodeLang.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="971697d1-1e56-4d2c-a1ba-e79980e6ac67" name="MoveNodeLang" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="971697d1-1e56-4d2c-a1ba-e79980e6ac67" name="MoveNodeLang">
      <concept id="6651247714017019985" name="MoveNodeLang.structure.ServiceMethodCall" flags="ng" index="7kfbv">
        <reference id="6651247714017019986" name="method" index="7kfbs" />
      </concept>
      <concept id="6651247714017017950" name="MoveNodeLang.structure.ServiceMethodDeclaration" flags="ig" index="7kfFg" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5LdYCTr7oZ0">
    <property role="TrG5h" value="Service1" />
    <node concept="2tJIrI" id="5LdYCTr7oZe" role="jymVt" />
    <node concept="2tJIrI" id="5LdYCTr7oZg" role="jymVt" />
    <node concept="7kfFg" id="5LdYCTr7oZy" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="5LdYCTr7oZ$" role="3clF45" />
      <node concept="3Tm1VV" id="5LdYCTr7oZ_" role="1B3o_S" />
      <node concept="3clFbS" id="5LdYCTr7oZA" role="3clF47">
        <node concept="3clFbF" id="5LdYCTr7p0a" role="3cqZAp">
          <node concept="2OqwBi" id="5LdYCTr7p07" role="3clFbG">
            <node concept="10M0yZ" id="5LdYCTr7p08" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="5LdYCTr7p09" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="5LdYCTr7p0J" role="37wK5m">
                <property role="Xl_RC" value="this is the test method" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5LdYCTr7oZn" role="jymVt" />
    <node concept="3Tm1VV" id="5LdYCTr7oZ1" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5LdYCTr7p7h">
    <property role="TrG5h" value="CallerClass" />
    <node concept="2tJIrI" id="5LdYCTr7p7_" role="jymVt" />
    <node concept="3clFb_" id="5LdYCTr7p7T" role="jymVt">
      <property role="TrG5h" value="someMethod" />
      <node concept="3cqZAl" id="5LdYCTr7p7V" role="3clF45" />
      <node concept="3Tm1VV" id="5LdYCTr7p7W" role="1B3o_S" />
      <node concept="3clFbS" id="5LdYCTr7p7X" role="3clF47">
        <node concept="3clFbH" id="5LdYCTr7p8r" role="3cqZAp" />
        <node concept="3clFbF" id="5LdYCTr7p8n" role="3cqZAp">
          <node concept="7kfbv" id="5LdYCTr7p8m" role="3clFbG">
            <ref role="7kfbs" node="5LdYCTr7oZy" resolve="testMethod" />
          </node>
        </node>
        <node concept="3clFbH" id="5LdYCTr7p8v" role="3cqZAp" />
        <node concept="3clFbH" id="5LdYCTr7p8$" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="5LdYCTr7p7E" role="jymVt" />
    <node concept="2tJIrI" id="5LdYCTr7p7I" role="jymVt" />
    <node concept="3Tm1VV" id="5LdYCTr7p7i" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5LdYCTr7pbs">
    <property role="TrG5h" value="Service2" />
    <node concept="3Tm1VV" id="5LdYCTr7pbt" role="1B3o_S" />
  </node>
</model>

