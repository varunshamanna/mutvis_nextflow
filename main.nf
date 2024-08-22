#!/usr/bin/env nextflow
nextflow.enable.dsl=2

//Pipiline version
pipelineVersion = '0.1'


//include subworkflows for short, long and hybrid assemblies
include { SR_ASSEMBLY     } from './workflows/sr_assembly'
include { LR_ASSEMBLY     } from './workflows/lr_assembly'
include { HY_ASSEMBLY     } from './workflows/hybrid_assembly'
